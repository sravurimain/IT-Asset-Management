# scripts/export_assets.ps1

# Create output directory if it doesn't exist
if (!(Test-Path "../data")) {
    New-Item -ItemType Directory -Path "../data"
}

# Gather system info
$ComputerName = $env:COMPUTERNAME
$SerialNumber = (Get-WmiObject -Class Win32_BIOS).SerialNumber
$Model = (Get-WmiObject -Class Win32_ComputerSystem).Model
$Manufacturer = (Get-WmiObject -Class Win32_ComputerSystem).Manufacturer
$Username = $env:USERNAME
$OS = (Get-WmiObject -Class Win32_OperatingSystem).Caption
$Date = Get-Date -Format "yyyy-MM-dd"

# Format data as an object
$Asset = [PSCustomObject]@{
    ComputerName   = $ComputerName
    SerialNumber   = $SerialNumber
    Model          = $Model
    Manufacturer   = $Manufacturer
    Username       = $Username
    OS             = $OS
    EntryDate      = $Date
}

# Output path
$csvPath = "../data/assets.csv"

# Write to CSV
if (!(Test-Path $csvPath)) {
    $Asset | Export-Csv -Path $csvPath -NoTypeInformation
} else {
    $Asset | Export-Csv -Path $csvPath -NoTypeInformation -Append
}

Write-Host "Asset info for $ComputerName exported to $csvPath"
