<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.2
    Date: 01.10.22
    Type: Public
    Source: --
    Description: Checks if Mozilla Firefox is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if FireFox is present on device
$installed = (Get-ChildItem "C:\Program Files\Mozilla Firefox\firefox.exe") 
# Checks version and if low enough, installs FireFox.  
$version = Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Mozilla Firefox 96.0.1 (x64 en-US)' -Name DisplayVersion

## BEGIN IF ELSE STATEMENT
If($null -eq $installed -or $version -le 84) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\MozillaFirefox" | Out-Null

# Copies Mozilla Firefox setup file into newly created folder. Note, you will need to change version. 
Copy-Item -Path "$PSScriptRoot\Firefox Setup 95.0.2.msi" -Destination "C:\MDM\MozillaFirefox\Firefox Setup 95.0.2.msi"

#This installs Mozilla Firefox. Note, you will need to change version.
MsiExec /i "C:\MDM\MozillaFirefox\Firefox Setup 95.0.2.msi" /qn

# Wait for the installation of FireFox to deploy. 
Start-Sleep -s 30

# Removes FireFox setup folder from main MDM folder. 
Remove-Item "C:\MDM\MozillaFirefox\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}

