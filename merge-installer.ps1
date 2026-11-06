param([string]$Version = '1.4.4')
$ErrorActionPreference = 'Stop'
$manifestPath = Join-Path $PSScriptRoot ($Version + '.json')
if (-not (Test-Path -LiteralPath $manifestPath)) {
    $manifestPath = Join-Path $PSScriptRoot ('versions\' + $Version + '.json')
}
$manifest = Get-Content -LiteralPath $manifestPath -Raw -Encoding UTF8 | ConvertFrom-Json
if ($manifest.version -ne $Version) { throw 'Manifest version mismatch.' }
$full = $manifest.full
function Assert-FileName([string]$Name) {
    if ([string]::IsNullOrWhiteSpace($Name) -or [IO.Path]::GetFileName($Name) -ne $Name -or $Name -in @('.', '..')) { throw 'Invalid asset filename.' }
}
Assert-FileName $full.name
$target = Join-Path $PSScriptRoot $full.name
if (Test-Path -LiteralPath $target) {
    if ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash -ieq $full.sha256) {
        Write-Output ('Already verified: ' + $target)
        return
    }
    throw 'An existing installer has a different hash. Move it aside before merging.'
}
foreach ($part in $full.parts) {
    Assert-FileName $part.name
    $source = Join-Path $PSScriptRoot $part.name
    if ((Get-Item -LiteralPath $source).Length -ne $part.bytes -or (Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash -ine $part.sha256) { throw ('Part verification failed: ' + $part.name) }
}
$temp = $target + '.merging'
if (Test-Path -LiteralPath $temp) { throw 'A previous .merging file exists. Check it before retrying.' }
$output = $null
$created = $false
try {
    $output = [IO.File]::Open($temp, [IO.FileMode]::CreateNew, [IO.FileAccess]::Write, [IO.FileShare]::None)
    $created = $true
    foreach ($part in $full.parts) {
        $inputFile = [IO.File]::OpenRead((Join-Path $PSScriptRoot $part.name))
        try { $inputFile.CopyTo($output) } finally { $inputFile.Dispose() }
    }
    $output.Dispose()
    $output = $null
    if ((Get-Item -LiteralPath $temp).Length -ne $full.bytes -or (Get-FileHash -LiteralPath $temp -Algorithm SHA256).Hash -ine $full.sha256) { throw 'Installer verification failed.' }
    Move-Item -LiteralPath $temp -Destination $target
    Write-Output ('Verified installer ready: ' + $target)
} finally {
    if ($null -ne $output) { $output.Dispose() }
    if ($created -and (Test-Path -LiteralPath $temp)) { Remove-Item -LiteralPath $temp }
}
