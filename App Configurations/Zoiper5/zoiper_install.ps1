<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 01.31.22
    Type: Public
    Source: --
    Description: Checks if Zoiper is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Zoiper is present on device 
$installed = (Get-ChildItem "C:\Program Files (x86)\Zoiper5\Zoiper5.exe")
# Checks version and if low enough, installs Zoiper.  
$version = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\WOW6432Node\Zoiper5' -Name Version

## BEGIN IF ELSE STATEMENT
If($null -eq $installed -or $version -le 4) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\Zoiper" | Out-Null

# Copies Zoiper setup file to newly created folder
Copy-Item -Path "$PSScriptRoot\Zoiper5_Installer_v5.5.9.exe" -Destination "C:\MDM\Zoiper\Zoiper5_Installer_v5.5.9.exe"

# Copies Zoiper setup file to newly created folder
Copy-Item -Path "$PSScriptRoot\zoiper_batinstall.bat" -Destination "C:\MDM\Zoiper\zoiper_batinstall.bat"

#This installs Zoiper. 
cmd.exe /c "C:\MDM\Zoiper\zoiper_batinstall.bat" -WindowStyle Hidden

# Wait for the installation of Zoiper to deploy. 
Start-Sleep -s 25

# Removes Zoiper setup folder from main MDM folder. 
Remove-Item "C:\MDM\Zoiper\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}

