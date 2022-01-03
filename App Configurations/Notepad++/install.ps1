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

# Creates new folder on device
New-Item -ItemType Directory -Force -Path "C:\MDM\NP+" | Out-Null

# Copies setup file onto device into newly created folder
Copy-Item -Path "$PSScriptRoot\npp.8.1.9.2.Installer.x64.exe" -Destination "C:\MDM\NP+\npp.8.1.9.2.Installer.x64.exe"

# Copies batch file into startup folder
Copy-Item –Path "$PSScriptRoot\remove_files.bat" –Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\remove_files.bat"

# Uses PowerShell to run scripts contained in source folder
start-process -FilePath "C:\MDM\NP+\npp.8.1.9.2.Installer.x64.exe" -ArgumentList '/S' -Verb runas -Wait