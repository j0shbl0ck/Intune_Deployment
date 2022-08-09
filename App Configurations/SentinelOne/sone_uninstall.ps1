<#
.SYNOPSIS
    This script uninstalls SentinelOne. You will need to run script as admin with passphrase provided in SentinelOne Admin Console.
    Author: Josh Block
.NOTES
    Version: 1.0.1
    Date: 08.01.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

⚠️ This app is currently under development and is not ready for Intune deployment ⚠️ 

Clear-Host
Write-Host "-------------------------" -ForegroundColor DarkCyan
Write-Host "SentinelOne Removal Script" -ForegroundColor Cyan
Write-Host "-------------------------" -ForegroundColor DarkCyan
Write-Host ""

# Get Host Name
Write-Host "Getting Host Name..." -ForegroundColor Yellow
$hostname = hostname
Write-Host "Host Name: $hostname" -ForegroundColor Green

# Navigate to SentinelOne
Write-Host "Navigating to SentinelOne..." -ForegroundColor Yellow
Set-Location "C:\Program Files\SentinelOne\*"
$location = Get-Location
Write-Host "Navigated to: $location" -ForegroundColor Green

# Ask user for passphrase to uninstall
$passphrase = $(Write-Host "Enter the passphrase to uninstall SentinelOne: " -ForegroundColor Yellow -NoNewLine; Read-Host)
Write-Host "Passphrase saved." -ForegroundColor Green

# Uninstall SentinelOne
Write-Host "Uninstalling SentinelOne..." -ForegroundColor Yellow
.\uninstall.exe /uninstall /norestart /q /k $passphrase
Write-Host "Uninstalled." -ForegroundColor Green