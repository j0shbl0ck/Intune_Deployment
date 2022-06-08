<#
.SYNOPSIS
    This script installs Intel® Driver & Support Assistant onto the device. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 06.08.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

# Checks File Explorer if Intel® Driver & Support Assistant is present on device
$installed = (Test-Path "C:\Program Files (x86)\Intel\Driver and Support Assistant\DSATray.exe")  

## BEGIN IF ELSE STATEMENT

If($false -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\IDSA" | Out-Null

# Copies setup file onto device into newly created folder
Copy-Item -Path "$PSScriptRoot\Intel-Driver-and-Support-Assistant-Installer.exe" -Destination "C:\MDM\IDSA\Intel-Driver-and-Support-Assistant-Installer.exe"

# Uses PowerShell to run scripts contained in source folder
tart-process -FilePath "C:\MDM\IDSA\Intel-Driver-and-Support-Assistant-Installer.exe" -ArgumentList '/S' -Verb runas -Wait

# Wait for the installation of Intel® Driver & Support Assistant to deploy. 
Start-Sleep -s 120

# Removes IDSA setup folder from main MDM folder. 
Remove-Item "C:\MDM\IDSA" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}
