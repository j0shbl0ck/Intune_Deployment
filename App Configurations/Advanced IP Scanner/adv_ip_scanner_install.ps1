<#
.SYNOPSIS
    Checks if Advanced IP Scanner is installed, if not, installs the application.
.NOTES
    Author: Josh Block
    Date: 07.11.22
    Type: Public
    Version: 1.0.0
    ======================================================
    Please resort to README.md for additional file setup. 
.LINK
    https://github.com/j0shbl0ck
#>


## BEGIN IF ELSE STATEMENT

# Checks File Explorer if Advanced IP Scanner is present on device 
$installed = (Get-ChildItem "C:\Program Files (x86)\Advanced IP Scanner v2\advanced_ip_scanner.exe")

## BEGIN IF ELSE STATEMENT
If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\AdvIPScanner" | Out-Null

# Copies Advanced IP Scanner setup file to newly created folder - Change file version to match version of application
Copy-Item -Path "$PSScriptRoot\ip_scan_en_us_Release_2.5.3850.msi" -Destination "C:\MDM\AdvIPScanner\ip_scan_en_us_Release_2.5.3850.msi"

#This installs Advanced IP Scanner - Change file version to match version of application
MsiExec /i "C:\MDM\AdvIPScanner\ip_scan_en_us_Release_2.5.3850.msi" /qn

# Wait for the installation of Advanced IP Scanner to deploy. 
Start-Sleep -s 30

# Removes Advanced IP Scanner setup folder from main MDM folder. 
Remove-Item "C:\MDM\AdvIPScanner\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}