<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.4
    Date: 12.29.21
    Type: Public
    Source: https://stackoverflow.com/questions/50274909/unattended-silent-install-notepad
    Description: Installs Notepad++ onto device.
    =============================================================================
#>

# Checks File Explorer if Google Chrome is present on device
$installed = (Get-ChildItem "C:\Program Files\Notepad++\notepad++.exe") 

## BEGIN IF ELSE STATEMENT

If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\NP+" | Out-Null

# Copies setup file onto device into newly created folder
Copy-Item -Path "$PSScriptRoot\npp.8.1.9.2.Installer.x64.exe" -Destination "C:\MDM\NP+\npp.8.1.9.2.Installer.x64.exe"

# Uses PowerShell to run scripts contained in source folder
start-process -FilePath "C:\MDM\NP+\npp.8.1.9.2.Installer.x64.exe" -ArgumentList '/S' -Verb runas -Wait

# Wait for the installation of Google Chrome to deploy. 
Start-Sleep -s 60

# Removes Google Chrome setup folder from main MDM folder. 
Remove-Item "C:\MDM\NP+" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}