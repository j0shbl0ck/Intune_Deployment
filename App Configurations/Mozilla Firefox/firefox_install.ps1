<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.10.22
    Type: Public
    Source: --
    Description: Checks if Mozilla Firefox is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Google Chrome is present on device
$installed = (Get-ChildItem "C:\Program Files\Mozilla Firefox\firefox.exe") 

## BEGIN IF ELSE STATEMENT

If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\MozillaFirefox" | Out-Null

# Copies Mozilla Firefox setup file into newly created folder. Note, you will need to change version. 
Copy-Item -Path "$PSScriptRoot\googlechromestandaloneenterprise64.msi" -Destination "C:\MDM\MozillaFirefox\Firefox Setup 95.0.2.msi"

#This installs Mozilla Firefox. Note, you will need to change version.
MsiExec /i "C:\MDM\MozillaFirefox\Firefox Setup 95.0.2.msi" /qn

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 30

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\MozillaFirefox\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}
