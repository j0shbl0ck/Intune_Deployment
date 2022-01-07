<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.07.22
    Type: Public
    Source: --
    Description: Checks if Google Chrome is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Google Chrome is present on device
$installed = (Get-ChildItem "C:\Program Files\Google\Chrome\Application\chrome.exe") 

## BEGIN IF ELSE STATEMENT

If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\GoogleChrome" | Out-Null

# Copies NetExtender.msi to newly created folder
Copy-Item -Path "$PSScriptRoot\googlechromestandaloneenterprise64.msi" -Destination "C:\MDM\GoogleChrome\googlechromestandaloneenterprise64.msi"

#This installs SonicWall NetExtender. Note, this does a restart! If you perform /norestart the file will not install correct.
MsiExec /i "C:\MDM\GoogleChrome\googlechromestandaloneenterprise64.msi" /qn

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 240

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\GoogleChrome\" -ErrorAction Stop

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}






 



