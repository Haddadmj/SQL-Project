<#
.SYNOPSIS
    Lists IBM API Connect products in a catalog and the applications subscribed
    to them, using the `apic` toolkit CLI instead of the REST API.

.DESCRIPTION
    Wraps the same toolkit commands used by src/apic_helpers.nim, but asks for
    `--format json --output -` so results are parsed as objects rather than
    scraped out of console text with findstr (which also makes it work on
    macOS/Linux).

    Requires the API Connect toolkit (`apic`) on PATH.

    Walks: products:list-all -> consumer-orgs:list -> apps:list -> subscriptions:list
    and joins subscriptions to products by product URL.

.EXAMPLE
    .\Get-ApicSubscriptions-Cli.ps1 -Catalog sandbox

.EXAMPLE
    .\Get-ApicSubscriptions-Cli.ps1 -Org my-org -Catalog sandbox -OutputPath .\subs.md

.EXAMPLE
    .\Get-ApicSubscriptions-Cli.ps1 -Catalog sandbox -SkipLogin   # reuse existing apic session
#>

[CmdletBinding()]
param(
    [string] $Server   = "apic-nonpr-35f19ae6-api-manager-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa",
    [string] $Username = "malhaddad",
    [string] $Password = "Mj219821",
    [string] $Realm    = "provider/default-idp-2",

    # Leave empty to auto-discover (first provider org / all catalogs).
    [string]   $Org       = "",
    [string[]] $Catalog   = @(),

    # Reuse the session from a previous `apic login` instead of logging in here.
    [switch] $SkipLogin,
    # Leave the session open on exit (useful when chaining scripts).
    [switch] $SkipLogout,

    # Markdown report destination; defaults to a timestamped file in $PWD.
    [string] $OutputPath = "",
    [switch] $NoFile
)

$ErrorActionPreference = "Stop"

# The toolkit wants a bare host, but people paste full URLs - accept both.
$Server = $Server -replace '^https?://', ''
$Server = $Server.TrimEnd('/')

# ==================== CLI PLUMBING ====================

function Assert-ApicAvailable {
    $cmd = Get-Command apic -ErrorAction SilentlyContinue
    if (-not $cmd) {
        throw "The API Connect toolkit ('apic') was not found on PATH. Install it from the API Manager > Download Toolkit page, or use the REST-based Get-ApicSubscriptions.ps1 instead."
    }
    Write-Verbose "Using apic at $($cmd.Source)"
}

function Invoke-Apic {
    <#
        Runs `apic` with the given arguments and returns a result object:
          .ExitCode / .StdOut / .StdErr
        stderr is captured separately so progress chatter never corrupts JSON.
    #>
    param(
        [Parameter(Mandatory)][string[]] $ApicArgs,
        [switch] $Quiet
    )

    $outFile = [System.IO.Path]::GetTempFileName()
    $errFile = [System.IO.Path]::GetTempFileName()

    try {
        if (-not $Quiet) {
            # Never echo the password, unlike the Nim helper.
            $shown = @()
            $mask  = $false
            foreach ($a in $ApicArgs) {
                if ($mask) { $shown += "***"; $mask = $false; continue }
                if ($a -eq "--password") { $shown += $a; $mask = $true; continue }
                $shown += $a
            }
            Write-Verbose "apic $($shown -join ' ')"
        }

        $p = Start-Process -FilePath "apic" -ArgumentList $ApicArgs `
                           -NoNewWindow -Wait -PassThru `
                           -RedirectStandardOutput $outFile `
                           -RedirectStandardError  $errFile

        return [pscustomobject]@{
            ExitCode = $p.ExitCode
            StdOut   = (Get-Content -Path $outFile -Raw -ErrorAction SilentlyContinue)
            StdErr   = (Get-Content -Path $errFile -Raw -ErrorAction SilentlyContinue)
        }
    }
    finally {
        Remove-Item $outFile, $errFile -Force -ErrorAction SilentlyContinue
    }
}

function Invoke-ApicJson {
    <#
        Runs an apic list command with `--format json --output -` and returns the
        parsed `results` array (empty array when the command returns nothing).
    #>
    param(
        [Parameter(Mandatory)][string[]] $ApicArgs,
        [string] $Label = "command"
    )

    $r = Invoke-Apic -ApicArgs ($ApicArgs + @("--format", "json", "--output", "-"))

    if ($r.ExitCode -ne 0) {
        $detail = if ($r.StdErr) { $r.StdErr.Trim() } else { $r.StdOut.Trim() }
        throw "apic $($ApicArgs[0]) failed while listing ${Label} (exit $($r.ExitCode)): $detail"
    }

    $text = $r.StdOut
    if ([string]::IsNullOrWhiteSpace($text)) { return @() }

    # Some toolkit versions prefix the payload with a status line - keep from the
    # first '{' or '[' onward.
    $start = $text.IndexOfAny([char[]]@('{', '['))
    if ($start -lt 0) { return @() }
    $json = $text.Substring($start)

    try {
        $parsed = $json | ConvertFrom-Json
    }
    catch {
        throw "Could not parse JSON from 'apic $($ApicArgs[0])' while listing ${Label}: $($_.Exception.Message)"
    }

    if ($null -eq $parsed)                                  { return @() }
    if ($parsed.PSObject.Properties.Name -contains 'results') { return @($parsed.results) }
    if ($parsed -is [array])                                { return @($parsed) }
    return @($parsed)
}

# ==================== SESSION ====================

function Connect-Apic {
    if ($SkipLogin) {
        Write-Host "Skipping login - reusing existing apic session." -ForegroundColor DarkGray
        return
    }

    Write-Host "Logging in to $Server as '$Username' (realm $Realm)..." -ForegroundColor Cyan
    $r = Invoke-Apic -ApicArgs @(
        "login",
        "--server",   $Server,
        "--username", $Username,
        "--password", $Password,
        "--realm",    $Realm
    )

    if ($r.ExitCode -ne 0) {
        $detail = if ($r.StdErr) { $r.StdErr.Trim() } else { $r.StdOut.Trim() }
        Write-Host "Login failed: $detail" -ForegroundColor Red
        Write-Host @"

To list the realms this server accepts:
  apic identity-providers:list --scope provider --server $Server

Then re-run with -Realm 'provider/<name>'.
"@ -ForegroundColor Yellow
        throw "apic login failed (exit $($r.ExitCode))."
    }

    Write-Host "Logged in." -ForegroundColor Green
}

function Disconnect-Apic {
    if ($SkipLogin -or $SkipLogout) { return }
    $r = Invoke-Apic -ApicArgs @("logout", "--server", $Server)
    if ($r.ExitCode -ne 0) {
        Write-Host "Warning: apic logout returned $($r.ExitCode)." -ForegroundColor DarkYellow
    }
}

# ==================== DISCOVERY ====================

function Get-ProviderOrg {
    if ($Org) { return $Org }

    Write-Host "Resolving provider organization..." -ForegroundColor Cyan
    $orgs = Invoke-ApicJson -ApicArgs @("orgs:list", "--server", $Server, "--my") -Label "orgs"

    $names = @($orgs | ForEach-Object { $_.name } | Where-Object { $_ })
    if ($names.Count -eq 0) { throw "No provider organizations visible to '$Username'." }
    if ($names.Count -gt 1) {
        Write-Host "  Orgs available: $($names -join ', ') (using '$($names[0])')" -ForegroundColor DarkGray
    }
    return $names[0]
}

function Get-Catalogs ($OrgName) {
    if ($Catalog.Count -gt 0) { return $Catalog }

    Write-Host "Resolving catalogs in '$OrgName'..." -ForegroundColor Cyan
    $cats = Invoke-ApicJson -ApicArgs @("catalogs:list", "--server", $Server, "--org", $OrgName) -Label "catalogs"

    $names = @($cats | ForEach-Object { $_.name } | Where-Object { $_ })
    if ($names.Count -eq 0) { throw "No catalogs found in org '$OrgName'." }
    Write-Host "  Catalogs: $($names -join ', ')" -ForegroundColor DarkGray
    return $names
}

# ==================== DATA FETCH ====================

function Get-CatalogProducts ($OrgName, $CatalogName) {
    Invoke-ApicJson -Label "products" -ApicArgs @(
        "products:list-all",
        "--scope",   "catalog",
        "--server",  $Server,
        "--org",     $OrgName,
        "--catalog", $CatalogName
    )
}

function Get-CatalogConsumerOrgs ($OrgName, $CatalogName) {
    Invoke-ApicJson -Label "consumer orgs" -ApicArgs @(
        "consumer-orgs:list",
        "--server",  $Server,
        "--org",     $OrgName,
        "--catalog", $CatalogName
    )
}

function Get-ConsumerOrgApps ($OrgName, $CatalogName, $ConsumerOrg) {
    Invoke-ApicJson -Label "apps in '$ConsumerOrg'" -ApicArgs @(
        "apps:list",
        "--server",       $Server,
        "--org",          $OrgName,
        "--catalog",      $CatalogName,
        "--consumer-org", $ConsumerOrg
    )
}

function Get-AppSubscriptions ($OrgName, $CatalogName, $ConsumerOrg, $AppName) {
    Invoke-ApicJson -Label "subscriptions for '$AppName'" -ApicArgs @(
        "subscriptions:list",
        "--server",       $Server,
        "--org",          $OrgName,
        "--catalog",      $CatalogName,
        "--consumer-org", $ConsumerOrg,
        "--app",          $AppName
    )
}

# ==================== HELPERS ====================

function Get-ProductKey ($Product) {
    $name = $Product.name
    $ver  = if ($Product.version) { $Product.version } else { "1.0.0" }
    if ($name -match ':') { return $name }   # list-all already returns name:version
    return "$name`:$ver"
}

function Get-ProductTitle ($Product) {
    $title = if ($Product.title) { $Product.title } else { $Product.name }
    $ver   = if ($Product.version) { $Product.version } else { "" }
    if ($ver) { return "$title (v$ver)" }
    return $title
}

function Get-UrlId ($Url) {
    if (-not $Url) { return $null }
    return ($Url -split '/')[-1]
}

# ==================== MAIN ====================

Assert-ApicAvailable
Connect-Apic

$report = New-Object System.Collections.Generic.List[object]

try {
    $OrgName  = Get-ProviderOrg
    $catalogs = Get-Catalogs $OrgName

    foreach ($cat in $catalogs) {
        Write-Host "`nCatalog '$cat': fetching products..." -ForegroundColor Cyan
        $products = Get-CatalogProducts $OrgName $cat

        # productKey -> @{ Title; Apps = @{ internalName = displayName } }
        $productMap = [ordered]@{}
        # product URL / id -> productKey, for joining subscriptions back to products
        $urlToKey = @{}

        foreach ($p in $products) {
            $key = Get-ProductKey $p
            if (-not $productMap.Contains($key)) {
                $productMap[$key] = @{ Title = (Get-ProductTitle $p); Apps = @{} }
            }
            if ($p.url) {
                $urlToKey[$p.url] = $key
                $id = Get-UrlId $p.url
                if ($id) { $urlToKey[$id] = $key }
            }
        }
        Write-Host "  $($productMap.Count) product(s)." -ForegroundColor DarkGray

        Write-Host "  Fetching consumer orgs..." -ForegroundColor Cyan
        $consumerOrgs = Get-CatalogConsumerOrgs $OrgName $cat
        $coNames = @($consumerOrgs | ForEach-Object { $_.name } | Where-Object { $_ })
        Write-Host "  $($coNames.Count) consumer org(s)." -ForegroundColor DarkGray

        $subCount = 0
        foreach ($co in $coNames) {
            $apps = Get-ConsumerOrgApps $OrgName $cat $co

            foreach ($app in $apps) {
                $appInternal = $app.name
                if (-not $appInternal) { continue }
                $appDisplay = if ($app.title) { $app.title } else { $appInternal }

                Write-Host "    $co / $appInternal" -ForegroundColor DarkGray
                $subs = Get-AppSubscriptions $OrgName $cat $co $appInternal

                foreach ($sub in $subs) {
                    $subCount++

                    # Prefer a direct URL match; fall back to the trailing id, then
                    # to whatever name fields the toolkit version happens to emit.
                    $key = $null
                    if ($sub.product_url) {
                        if ($urlToKey.ContainsKey($sub.product_url)) {
                            $key = $urlToKey[$sub.product_url]
                        } else {
                            $id = Get-UrlId $sub.product_url
                            if ($id -and $urlToKey.ContainsKey($id)) { $key = $urlToKey[$id] }
                        }
                    }
                    if (-not $key -and $sub.product) {
                        $pn = if ($sub.product.name) { $sub.product.name } else { $sub.product }
                        $pv = $sub.product.version
                        $key = if ($pv) { "$pn`:$pv" } else { "$pn" }
                    }
                    if (-not $key) { $key = "(unknown product)" }

                    if (-not $productMap.Contains($key)) {
                        $productMap[$key] = @{ Title = $key; Apps = @{} }
                    }
                    $productMap[$key].Apps["$co/$appInternal"] = $appDisplay
                }
            }
        }
        Write-Host "  $subCount subscription(s)." -ForegroundColor DarkGray

        $report.Add([pscustomobject]@{
            Catalog       = $cat
            Products      = $productMap
            Subscriptions = $subCount
            ConsumerOrgs  = $coNames.Count
        })
    }
}
finally {
    Disconnect-Apic
}

# ==================== OUTPUT ====================

Write-Host "`n================================================================================" -ForegroundColor Yellow
Write-Host "PRODUCT TO APPLICATION SUBSCRIPTIONS" -ForegroundColor Yellow
Write-Host "================================================================================" -ForegroundColor Yellow

$md = New-Object System.Collections.Generic.List[string]
$md.Add("# API Connect Subscriptions")
$md.Add("")
$md.Add("| | |")
$md.Add("|---|---|")
$md.Add("| **Server** | ``$Server`` |")
$md.Add("| **Provider org** | ``$OrgName`` |")
$md.Add("| **Source** | ``apic`` toolkit CLI |")
$md.Add("| **Generated** | $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') |")
$md.Add("")

foreach ($entry in $report) {
    Write-Host "`n--- Catalog: $($entry.Catalog) ---" -ForegroundColor Magenta

    $md.Add("## Catalog ``$($entry.Catalog)``")
    $md.Add("")
    $md.Add("$($entry.Products.Count) product(s), $($entry.ConsumerOrgs) consumer org(s), $($entry.Subscriptions) subscription(s).")
    $md.Add("")

    foreach ($pKey in ($entry.Products.Keys | Sort-Object)) {
        $prod = $entry.Products[$pKey]

        Write-Host "`nProduct Display Name : " -NoNewline -ForegroundColor Cyan
        Write-Host $prod.Title -ForegroundColor White
        Write-Host "Product Internal Name: " -NoNewline -ForegroundColor Cyan
        Write-Host $pKey -ForegroundColor Gray

        $md.Add("### $($prod.Title)")
        $md.Add("")
        $md.Add("**Internal name:** ``$pKey``")
        $md.Add("")

        if ($prod.Apps.Count -gt 0) {
            Write-Host "  Subscribed Applications:" -ForegroundColor Green
            $md.Add("| Application (display name) | Consumer org / internal name |")
            $md.Add("|---|---|")

            foreach ($appKey in ($prod.Apps.Keys | Sort-Object)) {
                $appDisplay = $prod.Apps[$appKey]
                Write-Host "    - Display Name  : " -NoNewline -ForegroundColor White
                Write-Host $appDisplay -ForegroundColor Yellow
                Write-Host "      Consumer/App  : " -NoNewline -ForegroundColor White
                Write-Host $appKey -ForegroundColor DarkGray

                $md.Add("| $appDisplay | ``$appKey`` |")
            }
        } else {
            Write-Host "  Subscribed Applications: None" -ForegroundColor Gray
            $md.Add("_No subscribed applications._")
        }
        $md.Add("")
    }
}

if (-not $NoFile) {
    if ($OutputPath -eq "") {
        $stamp      = Get-Date -Format "yyyyMMdd-HHmmss"
        $OutputPath = Join-Path $PWD "apic-subscriptions-cli-$OrgName-$stamp.md"
    }

    $parent = Split-Path -Parent $OutputPath
    if ($parent -and -not (Test-Path $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }

    if ($PSVersionTable.PSVersion.Major -ge 6) {
        $md -join [Environment]::NewLine | Set-Content -Path $OutputPath -Encoding utf8NoBOM
    } else {
        $md -join [Environment]::NewLine | Set-Content -Path $OutputPath -Encoding UTF8
    }

    Write-Host "`nMarkdown report written to: " -NoNewline -ForegroundColor Cyan
    Write-Host $OutputPath -ForegroundColor White
}
