<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.4
    Date: 12.21.21
    Type: Public
    Source: https://stackoverflow.com/questions/50274909/unattended-silent-install-notepad
    Description: Copies the SonicWall NetExtender application and registy profile key.
    =============================================================================
#>

# Checks registry if SonicWall NetExtender is already installed
$software = "{EF06A6A8-6B81-4A09-8223-789953972FFF}"
$installed = (Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$software) 

If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\SonicWallNetExtender" | Out-Null

# Copies NetExtender.msi to newly created folder
Copy-Item -Path "$PSScriptRoot\NetExtender-10.2.315.msi" -Destination "C:\MDM\SonicWallNetExtender\NetExtender-10.2.315.msi"

#Copies profile.ps1 to newly created folder
Copy-Item -Path "$PSScriptRoot\profile.ps1" -Destination "C:\MDM\SonicWallNetExtender\profile.ps1"

# Copies batch file to the startup folder to run on next startup of device
Copy-Item -Path "$PSScriptRoot\Create_Profile.bat" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"

#This installs SonicWall NetExtender. Note, this does a restart! If you perform /norestart the file will not install correct.
msiexec /i "C:\MDM\SonicWallNetExtender\NetExtender-10.2.315.msi" /q 

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}






 



