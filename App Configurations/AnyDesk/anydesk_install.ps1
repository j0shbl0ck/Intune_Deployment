<#
.SYNOPSIS
    This finds any version of AnyDesk installed, and updates it to the latest version.
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 04.14.25
    Type: Public
.NOTES

.LINK

#>

# Checks File Explorer if AnyDesk is present on device 
$installed = (Get-ChildItem "C:\Program Files (x86)\AnyDesk*\AnyDesk*.exe")
# Checks version and if low enough, installs newer version of AnyDesk.  
$version = (Get-WmiObject Win32_Product | Where-Object { $_.Name -like "*AnyDesk*" }).Version


## BEGIN IF ELSE STATEMENT
If($null -eq $installed -or $version -le "7.0.15") {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\LUAnyDesk" | Out-Null

# Copies AnyDesk setup file to newly created folder
Copy-Item -Path "$PSScriptRoot\LUAnyDesk.msi" -Destination "C:\MDM\LUAnyDesk\LUAnyDesk.msi"

#This installs AnyDesk. 
MsiExec /i "C:\MDM\LUAnyDesk\LUAnyDesk.msi" /qn

# Wait for the installation of AnyDesk to deploy. 
Start-Sleep -s 15

# Removes AnyDesk setup folder from main MDM folder. 
Remove-Item "C:\MDM\LUAnyDesk\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}






 



