<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.31.22
    Type: Public
    Source: --
    Description: Checks if Zoiper is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Google Chrome is present on device 
$installed = (Get-ChildItem "C:\Program Files (x86)\Zoiper5\Zoiper5.exe")
# Checks version and if low enough, installs Google Chrome.  
$version = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\WOW6432Node\Zoiper5' -Name Version

## BEGIN IF ELSE STATEMENT
If($null -eq $installed -or $version -le 4) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\Zoiper" | Out-Null

# Copies Google Chrome setup file to newly created folder
Copy-Item -Path "$PSScriptRoot\Zoiper5_Installer_v5.5.9.exe" -Destination "C:\MDM\Zoiper\Zoiper5_Installer_v5.5.9.exe"

#This installs Google Chrome. 
start-process -FilePath "C:\MDM\Zoiper\zoiper_Biz_3.1_setup.exe" --mode unattended --unattendedmodeui minimal

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 60

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\Zoiper\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}

