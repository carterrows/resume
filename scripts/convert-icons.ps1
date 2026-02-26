$ErrorActionPreference = "Stop"
$icons = @("website", "email", "github", "linkedin")

foreach ($icon in $icons) {
    if (-not (Test-Path ".\\icons\\$icon.svg")) {
        throw "Missing icons\\$icon.svg"
    }
    inkscape ".\\icons\\$icon.svg" --export-type=pdf --export-filename=".\\icons\\$icon.pdf"
    Write-Host "Generated icons\\$icon.pdf"
}
