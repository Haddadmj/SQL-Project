<#
.SYNOPSIS
    Lists IBM API Connect products in a catalog and the applications subscribed to them.

.DESCRIPTION
    Authenticates against the API Connect management REST API using the OAuth
    password grant, then walks products + subscriptions in a catalog.

    Prints the result to the console and writes a Markdown report.
    Works on both Windows PowerShell 5.1 and PowerShell 7+.

.EXAMPLE
    .\Get-ApicSubscriptions.ps1 -OrgName my-org -CatalogName sandbox

.EXAMPLE
    .\Get-ApicSubscriptions.ps1                              # auto-discover org/catalog/realm

.EXAMPLE
    .\Get-ApicSubscriptions.ps1 -OutputPath .\report.md      # fixed report path

.EXAMPLE
    .\Get-ApicSubscriptions.ps1 -NoFile                      # console only
#>

[CmdletBinding()]
param(
    [string] $ApicHost     = "https://apic-nonpr-35f19ae6-api-manager-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa",
    [string] $Username     = "malhaddad",
    [string] $Password     = "Mj219821",

    # Leave empty to auto-discover from /api/me and the org's catalog list.
    [string] $OrgName      = "",
    [string] $CatalogName  = "",

    # Leave empty to auto-detect (tries provider/default-idp-2, -1, -3, ...).
    [string] $Realm        = "",

    # Default = the credentials baked into the API Connect toolkit CLI.
    [string] $ClientId     = "599b7aef-8841-4ee2-88a0-84d49c4d6ff2",
    [string] $ClientSecret = "0ea28423-e73b-47d4-b40e-ddb45c48bb0c",

    # Markdown report destination. Defaults to a timestamped file in the
    # current directory; use -NoFile to print to the console only.
    [string] $OutputPath   = "",
    [switch] $NoFile
)

$ErrorActionPreference = "Stop"
$ApicHost = $ApicHost.TrimEnd('/')

# ==================== TLS / CERTIFICATE HANDLING ====================
# PS 7+ has -SkipCertificateCheck; PS 5.1 does not, and needs a policy override.
$script:IsPS7 = $PSVersionTable.PSVersion.Major -ge 6

[System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.SecurityProtocolType]::Tls12 -bor [System.Net.ServicePointManager]::SecurityProtocol

if (-not $script:IsPS7) {
    # Windows PowerShell 5.1: install a permissive cert policy once.
    if (-not ("ApicCertPolicy" -as [type])) {
        Add-Type -TypeDefinition @"
using System.Net;
using System.Security.Cryptography.X509Certificates;
public class ApicCertPolicy : ICertificatePolicy {
    public bool CheckValidationResult(ServicePoint sp, X509Certificate cert,
                                      WebRequest req, int problem) { return true; }
}
"@
    }
    [System.Net.ServicePointManager]::CertificatePolicy = New-Object ApicCertPolicy
}
else {
    [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
}

# ==================== HTTP HELPERS ====================

function Invoke-ApicRequest {
    <#
        Thin wrapper over Invoke-RestMethod that:
          - only passes -SkipCertificateCheck where it exists (PS 7+)
          - surfaces the API Connect error body instead of a bare status code
    #>
    param(
        [Parameter(Mandatory)] [string] $Uri,
        [string]    $Method      = "Get",
        [hashtable] $Headers     = @{},
        [string]    $Body,
        [string]    $ContentType = "application/json"
    )

    $params = @{
        Uri     = $Uri
        Method  = $Method
        Headers = $Headers
    }
    if ($PSBoundParameters.ContainsKey('Body') -and $Body) {
        $params.Body        = $Body
        $params.ContentType = $ContentType
    }
    if ($script:IsPS7) { $params.SkipCertificateCheck = $true }

    try {
        return Invoke-RestMethod @params
    }
    catch {
        $detail = Get-ApicErrorDetail $_
        throw "$Method $Uri failed: $detail"
    }
}

function Get-ApicErrorDetail {
    <# Pulls the response body out of a failed web request on either PS edition. #>
    param($ErrorRecord)

    $status = ""
    $resp   = $ErrorRecord.Exception.Response
    if ($resp -and $resp.StatusCode) {
        $code   = [int]$resp.StatusCode
        $status = "HTTP $code $($resp.StatusCode) - "
    }

    # PS 7 (and PS 5.1 for some paths) puts the body here already.
    $body = $ErrorRecord.ErrorDetails.Message

    if (-not $body -and $resp -and $resp.GetResponseStream) {
        try {
            $stream = $resp.GetResponseStream()
            $stream.Position = 0
            $reader = New-Object System.IO.StreamReader($stream)
            $body   = $reader.ReadToEnd()
            $reader.Dispose()
        }
        catch { }
    }

    if (-not $body) { $body = $ErrorRecord.Exception.Message }
    return "$status$body"
}

# ==================== 1. AUTHENTICATION ====================

function Get-ApicRealmCandidates {
    <#
        Asks the management server which provider realms exist. This endpoint is
        unauthenticated; if it is unavailable we fall back to the standard names.
        default-idp-2 is the local user registry (api-manager-lur) used by most
        installs; default-idp-1 is the OIDC / common-services registry.
    #>
    $fallback = @(
        "provider/default-idp-2",
        "provider/default-idp-1",
        "provider/default-idp-3"
    )

    foreach ($path in @("/api/cloud/admin/identity-providers?scope=provider",
                        "/api/identity-providers?scope=provider")) {
        try {
            $r = Invoke-ApicRequest -Uri "$ApicHost$path" -Headers @{ "Accept" = "application/json" }
            $names = @()
            foreach ($idp in $r.results) {
                if ($idp.realm)     { $names += $idp.realm }
                elseif ($idp.name)  { $names += "provider/$($idp.name)" }
            }
            if ($names.Count -gt 0) {
                Write-Host "  Discovered realms: $($names -join ', ')" -ForegroundColor DarkGray
                return $names
            }
        }
        catch { }   # endpoint varies by APIC version; fall through
    }

    return $fallback
}

function Request-ApicToken {
    param([Parameter(Mandatory)][string] $TokenRealm)

    $body = @{
        grant_type    = "password"
        username      = $Username
        password      = $Password
        realm         = $TokenRealm
        client_id     = $ClientId
        client_secret = $ClientSecret
    } | ConvertTo-Json

    $response = Invoke-ApicRequest `
        -Uri     "$ApicHost/api/token" `
        -Method  Post `
        -Headers @{ "Accept" = "application/json" } `
        -Body    $body

    return $response.access_token
}

function Get-AccessToken {
    $realms = if ($Realm) { @($Realm) } else { Get-ApicRealmCandidates }

    $lastError = $null
    foreach ($r in $realms) {
        Write-Host "  Trying realm '$r'..." -ForegroundColor DarkGray
        try {
            $token = Request-ApicToken -TokenRealm $r
            if ($token) {
                Write-Host "  Authenticated as '$Username' in realm '$r'." -ForegroundColor Green
                $script:Realm = $r
                return $token
            }
        }
        catch {
            $lastError = $_.Exception.Message
            # A bad username/password is fatal - no point trying other realms.
            if ($lastError -match "invalid_grant|Invalid credentials|401") {
                Write-Host "    rejected: $lastError" -ForegroundColor DarkYellow
            }
        }
    }

    Write-Host "`nAuthentication failed for every realm tried." -ForegroundColor Red
    Write-Host "Last error: $lastError" -ForegroundColor Red
    Write-Host @"

Common causes:
  * Wrong realm       - run: apic identity-providers:list --scope provider --server $ApicHost
  * Wrong client      - a custom registered app requires its own -ClientId / -ClientSecret
  * Wrong credentials - the user must exist in the chosen provider realm
  * Wrong host        - use the *platform API* endpoint, not the API Manager UI host
"@ -ForegroundColor Yellow
    return $null
}

# ==================== 2. CONTEXT DISCOVERY ====================

function Get-DefaultOrg ($Token) {
    $headers = @{ "Authorization" = "Bearer $Token"; "Accept" = "application/json" }
    $orgs = Invoke-ApicRequest -Uri "$ApicHost/api/orgs?org_type=provider" -Headers $headers
    if (-not $orgs.results -or $orgs.results.Count -eq 0) {
        throw "No provider organizations visible to '$Username'."
    }
    if ($orgs.results.Count -gt 1) {
        Write-Host "  Provider orgs available: $(($orgs.results | ForEach-Object { $_.name }) -join ', ')" -ForegroundColor DarkGray
    }
    return $orgs.results[0].name
}

function Get-DefaultCatalog ($Token, $Org) {
    $headers = @{ "Authorization" = "Bearer $Token"; "Accept" = "application/json" }
    $cats = Invoke-ApicRequest -Uri "$ApicHost/api/orgs/$Org/catalogs" -Headers $headers
    if (-not $cats.results -or $cats.results.Count -eq 0) {
        throw "No catalogs found in org '$Org'."
    }
    if ($cats.results.Count -gt 1) {
        Write-Host "  Catalogs available: $(($cats.results | ForEach-Object { $_.name }) -join ', ')" -ForegroundColor DarkGray
    }
    return $cats.results[0].name
}

# ==================== 3. DATA FETCH ====================

function Get-ApicCollection ($Token, $Path, $Label) {
    $headers = @{ "Authorization" = "Bearer $Token"; "Accept" = "application/json" }
    try {
        $response = Invoke-ApicRequest -Uri "$ApicHost$Path" -Headers $headers
        return $response.results
    }
    catch {
        Write-Host "Failed to fetch ${Label}: $($_.Exception.Message)" -ForegroundColor Red
        return @()
    }
}

# ==================== MAIN ====================

Write-Host "Authenticating with API Connect at $ApicHost..." -ForegroundColor Cyan
$Token = Get-AccessToken

if (-not $Token) {
    Write-Host "Execution stopped due to authentication failure." -ForegroundColor Red
    exit 1
}

if (-not $OrgName) {
    Write-Host "Resolving provider organization..." -ForegroundColor Cyan
    $OrgName = Get-DefaultOrg -Token $Token
}
if (-not $CatalogName) {
    Write-Host "Resolving catalog..." -ForegroundColor Cyan
    $CatalogName = Get-DefaultCatalog -Token $Token -Org $OrgName
}
Write-Host "Using org '$OrgName', catalog '$CatalogName'." -ForegroundColor Green

Write-Host "Fetching products..." -ForegroundColor Cyan
$Products = Get-ApicCollection -Token $Token `
    -Path "/api/catalogs/$OrgName/$CatalogName/products" -Label "products"

Write-Host "Fetching subscriptions..." -ForegroundColor Cyan
$Subscriptions = Get-ApicCollection -Token $Token `
    -Path "/api/catalogs/$OrgName/$CatalogName/subscriptions" -Label "subscriptions"

# Map Products -> Applications (store hashtable of app info: Name & Title)
$ProductAppMap   = @{}
$ProductTitleMap = @{}

# Initialize product maps
foreach ($prod in $Products) {
    $pInternalName = $prod.name
    $pTitle        = if ($prod.title)   { $prod.title }   else { $pInternalName }
    $pVer          = if ($prod.version) { $prod.version } else { "1.0.0" }
    $pKey          = "$pInternalName`:$pVer"

    $ProductTitleMap[$pKey] = "$pTitle (v$pVer)"
    if (-not $ProductAppMap.ContainsKey($pKey)) {
        $ProductAppMap[$pKey] = @{}
    }
}

# Process Subscriptions
foreach ($sub in $Subscriptions) {
    # Extract Product Information
    $pName  = if ($sub.product_name)    { $sub.product_name }    else { $sub.product.name }
    $pVer   = if ($sub.product_version) { $sub.product_version } else { $sub.product.version }
    $pTitle = if ($sub.product_title)   { $sub.product_title }   else { $sub.product.title }
    $pKey   = if ($pVer) { "$pName`:$pVer" } else { $pName }

    # Extract Application Information (Internal Name & Display Name)
    $appInternalName = if ($sub.app_name)  { $sub.app_name }  else { $sub.app.name }
    $appDisplayName  = if ($sub.app_title) { $sub.app_title } else { $sub.app.title }

    # Fallback if title is missing
    if (-not $appDisplayName) { $appDisplayName = $appInternalName }

    # Ensure product key exists
    if (-not $ProductAppMap.ContainsKey($pKey)) {
        $ProductAppMap[$pKey]   = @{}
        $ProductTitleMap[$pKey] = if ($pTitle) { "$pTitle (v$pVer)" } else { $pKey }
    }

    # Store Application under Product (using Internal Name as Unique Key)
    if ($appInternalName) {
        $ProductAppMap[$pKey][$appInternalName] = $appDisplayName
    }
}

# Display Output
Write-Host "`n================================================================================" -ForegroundColor Yellow
Write-Host "PRODUCT TO APPLICATION SUBSCRIPTIONS" -ForegroundColor Yellow
Write-Host "================================================================================" -ForegroundColor Yellow

# Markdown report accumulates alongside the console output.
$md = New-Object System.Collections.Generic.List[string]
$md.Add("# API Connect Subscriptions")
$md.Add("")
$md.Add("| | |")
$md.Add("|---|---|")
$md.Add("| **Server** | ``$ApicHost`` |")
$md.Add("| **Provider org** | ``$OrgName`` |")
$md.Add("| **Catalog** | ``$CatalogName`` |")
$md.Add("| **Realm** | ``$Realm`` |")
$md.Add("| **Generated** | $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') |")
$md.Add("| **Products** | $($ProductAppMap.Count) |")
$md.Add("| **Subscriptions** | $(@($Subscriptions).Count) |")
$md.Add("")

foreach ($pKey in ($ProductAppMap.Keys | Sort-Object)) {
    $pDisplayTitle = $ProductTitleMap[$pKey]

    Write-Host "`nProduct Display Name : " -NoNewline -ForegroundColor Cyan
    Write-Host $pDisplayTitle -ForegroundColor White
    Write-Host "Product Internal Name: " -NoNewline -ForegroundColor Cyan
    Write-Host $pKey -ForegroundColor Gray

    $appsHashtable = $ProductAppMap[$pKey]

    $md.Add("## $pDisplayTitle")
    $md.Add("")
    $md.Add("**Internal name:** ``$pKey``")
    $md.Add("")

    if ($appsHashtable.Count -gt 0) {
        Write-Host "  Subscribed Applications:" -ForegroundColor Green
        $md.Add("| Application (display name) | Internal name |")
        $md.Add("|---|---|")

        foreach ($appInternal in ($appsHashtable.Keys | Sort-Object)) {
            $appDisplay = $appsHashtable[$appInternal]
            Write-Host "    - Display Name  : " -NoNewline -ForegroundColor White
            Write-Host $appDisplay -ForegroundColor Yellow
            Write-Host "      Internal Name : " -NoNewline -ForegroundColor White
            Write-Host $appInternal -ForegroundColor DarkGray

            $md.Add("| $appDisplay | ``$appInternal`` |")
        }
    } else {
        Write-Host "  Subscribed Applications: None" -ForegroundColor Gray
        $md.Add("_No subscribed applications._")
    }
    $md.Add("")
}

# ==================== MARKDOWN REPORT ====================

if (-not $NoFile) {
    if ($OutputPath -eq "") {
        $stamp      = Get-Date -Format "yyyyMMdd-HHmmss"
        $OutputPath = Join-Path $PWD "apic-subscriptions-$OrgName-$CatalogName-$stamp.md"
    }

    $parent = Split-Path -Parent $OutputPath
    if ($parent -and -not (Test-Path $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }

    # UTF8 without BOM where the platform supports it (PS 7+); 5.1 falls back to UTF8.
    if ($script:IsPS7) {
        $md -join [Environment]::NewLine | Set-Content -Path $OutputPath -Encoding utf8NoBOM
    } else {
        $md -join [Environment]::NewLine | Set-Content -Path $OutputPath -Encoding UTF8
    }

    Write-Host "`nMarkdown report written to: " -NoNewline -ForegroundColor Cyan
    Write-Host $OutputPath -ForegroundColor White
}
