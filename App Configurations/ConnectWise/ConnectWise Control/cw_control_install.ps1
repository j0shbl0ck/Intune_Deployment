<#
.SYNOPSIS
    This script installs ConnectWise Control onto the device. 
    Author: Josh Block
.NOTES
    Version: 1.0.3
    Date: 05.25.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://silentinstallhq.com/connectwise-control-screenconnect-silent-install-how-to-guide/
#>

# Checks File Explorer if ConnectWise Control is present on device
$installed = (Test-Path "C:\Program Files (x86)\ScreenConnect Client*")  

## BEGIN IF ELSE STATEMENT

If($false -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\ConnectWise_Control" | Out-Null

# Copies setup file onto device into newly created folder - rename MSI setup file
Copy-Item -Path "$PSScriptRoot\IFT_CW_Control.msi" -Destination "C:\MDM\ConnectWise_Control\IFT_CW_Control.msi"

# Uses PowerShell to run scripts contained in source folder - rename MSI setup file
Start-Process msiexec.exe -Wait -ArgumentList '/I C:\MDM\ConnectWise_Control\IFT_CW_Control.msi /quiet'

# Wait for the installation of ConnectWise Control to deploy. 
Start-Sleep -s 60

# Removes ConnnectWise Control setup folder from main MDM folder. 
Remove-Item "C:\MDM\ConnectWise_Control" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}