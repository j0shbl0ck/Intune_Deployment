<#
.SYNOPSIS
    This script installs ConnectWise Control onto device.
    Author: Josh Block
.NOTES
    Version: 1.0.1
    Date: 05.25.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://silentinstallhq.com/connectwise-control-screenconnect-silent-install-how-to-guide/
#>

# Checks File Explorer if Google Chrome is present on device
$installed = (Test-Path "C:\Program Files (x86)\ScreenConnect Client*")  

## BEGIN IF ELSE STATEMENT

If($false -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\ConnectWise_Control" | Out-Null

# Copies setup file onto device into newly created folder
Copy-Item -Path "$PSScriptRoot\IFT_CW_Control.msi" -Destination "C:\MDM\ConnectWise_Control\IFT_CW_Control.msi"

# Uses PowerShell to run scripts contained in source folder
Start-Process msiexec.exe -Wait -ArgumentList '/I C:\MDM\ConnectWise_Control\IFT_CW_Control.msi /quiet'

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 60

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\ConnectWise_Control" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}