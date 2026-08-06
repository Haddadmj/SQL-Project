# ==================== CONFIGURATION ====================
$ApicHost    = "https://apic-nonpr-35f19ae6-api-manager-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa"
$Username    = "malhaddad"
$Password    = "Mj219821"

# Adjust these to match your environment
$OrgName     = "your-provider-org"     # Internal name of Provider Org
$CatalogName = "your-catalog-name"     # Internal name of Catalog (e.g., 'sandbox')
$Realm       = "provider/default-idp"  # Identity provider realm
# =======================================================

# Ignore SSL certificate errors for self-signed certs
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}

# 1. Authenticate to get Access Token
function Get-AccessToken {
    $tokenUrl = "$ApicHost/api/token"
    
    $body = @{
        grant_type    = "password"
        username      = $Username
        password      = $Password
        realm         = $Realm
        client_id     = "00000000-0000-0000-0000-000000000000"
        client_secret = "00000000-0000-0000-0000-000000000000"
    } | ConvertTo-Json

    $headers = @{
        "Content-Type" = "application/json"
        "Accept"       = "application/json"
    }

    try {
        $response = Invoke-RestMethod -Uri $tokenUrl -Method Post -Body $body -Headers $headers -SkipCertificateCheck
        return $response.access_token
    }
    catch {
        Write-Error "Authentication Failed: $_"
        return $null
    }
}

# 2. Fetch Products
function Get-Products ($Token) {
    $url = "$ApicHost/api/catalogs/$OrgName/$CatalogName/products"
    $headers = @{
        "Authorization" = "Bearer $Token"
        "Accept"        = "application/json"
    }

    try {
        $response = Invoke-RestMethod -Uri $url -Method Get -Headers $headers -SkipCertificateCheck
        return $response.results
    }
    catch {
        Write-Error "Failed to fetch products: $_"
        return @()
    }
}

# 3. Fetch Subscriptions
function Get-Subscriptions ($Token) {
    $url = "$ApicHost/api/catalogs/$OrgName/$CatalogName/subscriptions"
    $headers = @{
        "Authorization" = "Bearer $Token"
        "Accept"        = "application/json"
    }

    try {
        $response = Invoke-RestMethod -Uri $url -Method Get -Headers $headers -SkipCertificateCheck
        return $response.results
    }
    catch {
        Write-Error "Failed to fetch subscriptions: $_"
        return @()
    }
}

# Main Execution
Write-Host "Authenticating with API Connect..." -ForegroundColor Cyan
$Token = Get-AccessToken

if (-not $Token) {
    Write-Host "Execution stopped due to authentication failure." -ForegroundColor Red
    exit
}

Write-Host "Fetching Products for Catalog: '$CatalogName'..." -ForegroundColor Cyan
$Products = Get-Products -Token $Token

Write-Host "Fetching Subscriptions..." -ForegroundColor Cyan
$Subscriptions = Get-Subscriptions -Token $Token

# Map Products -> Applications (store hashtable of app info: Name & Title)
$ProductAppMap  = @{}
$ProductTitleMap = @{}

# Initialize product maps
foreach ($prod in $Products) {
    $pInternalName = $prod.name
    $pTitle        = if ($prod.title) { $prod.title } else { $pInternalName }
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
    $pName  = if ($sub.product_name) { $sub.product_name } else { $sub.product.name }
    $pVer   = if ($sub.product_version) { $sub.product_version } else { $sub.product.version }
    $pTitle = if ($sub.product_title) { $sub.product_title } else { $sub.product.title }
    $pKey   = if ($pVer) { "$pName`:$pVer" } else { $pName }

    # Extract Application Information (Internal Name & Display Name)
    $appInternalName = if ($sub.app_name) { $sub.app_name } else { $sub.app.name }
    $appDisplayName  = if ($sub.app_title) { $sub.app_title } else { $sub.app.title }

    # Fallback if title is missing
    if (-not $appDisplayName) { $appDisplayName = $appInternalName }

    # Ensure product key exists
    if (-not $ProductAppMap.ContainsKey($pKey)) {
        $ProductAppMap[$pKey] = @{}
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

foreach ($pKey in $ProductAppMap.Keys) {
    $pDisplayTitle = $ProductTitleMap[$pKey]
    
    Write-Host "`nProduct Display Name : " -NoNewline -ForegroundColor Cyan
    Write-Host $pDisplayTitle -ForegroundColor White
    Write-Host "Product Internal Name: " -NoNewline -ForegroundColor Cyan
    Write-Host $pKey -ForegroundColor Gray
    
    $appsHashtable = $ProductAppMap[$pKey]
    
    if ($appsHashtable.Count -gt 0) {
        Write-Host "  Subscribed Applications:" -ForegroundColor Green
        foreach ($appInternal in ($appsHashtable.Keys | Sort-Object)) {
            $appDisplay = $appsHashtable[$appInternal]
            Write-Host "    - Display Name  : " -NoNewline -ForegroundColor White
            Write-Host $appDisplay -ForegroundColor Yellow
            Write-Host "      Internal Name : " -NoNewline -ForegroundColor White
            Write-Host $appInternal -ForegroundColor DarkGray
        }
    } else {
        Write-Host "  Subscribed Applications: None" -ForegroundColor Gray
    }
}