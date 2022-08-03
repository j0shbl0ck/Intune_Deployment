<#
.SYNOPSIS
    This script installs ConnectWise Manage onto the device. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 06.20.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

# Checks File Explorer if ConnectWise Manage is present on device
$pathone = (Get-ChildItem "C:\Program Files (x86)\ConnectWise\PSA.net\ConnectWiseManage.exe") 
$pathtwo = (Get-ChildItem "C:\Program Files\ConnectWise\PSA.net\ConnectWiseManage.exe")

## BEGIN IF ELSE STATEMENT

If($null -eq $pathone -or $null -eq $pathtwo) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\CWM" | Out-Null

# Copies ConnectWise Manage setup file to newly created folder
Copy-Item -Path "$PSScriptRoot\ConnectWise-Manage-Internet-Client-x64.msi" -Destination "C:\MDM\CWM\ConnectWise-Manage-Internet-Client-x64.msi"

#This installs Google Chrome. 
MsiExec /i "C:\MDM\CWM\ConnectWise-Manage-Internet-Client-x64.msi" /qn

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 30

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\CWM" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}