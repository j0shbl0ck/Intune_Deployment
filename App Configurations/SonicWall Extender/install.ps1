<#

Author: Josh Block 
Date: 12.21.21
Type: Public
Source: 
Description: Copies the SonicWall NetExtender application and registy profile key.

#>


New-Item –ItemType Directory –Force –Path "C:\MDM\SonicWallNetExtender" | Out-Null
Copy-Item –Path "$PSScriptRoot\NetExtender-10.2.315.msi" –Destination "C:\MDM\SonicWallNetExtender\NetExtender-10.2.315.msi"
Copy-Item –Path "$PSScriptRoot\profile.ps1" –Destination "C:\MDM\SonicWallNetExtender\profile.ps1"
Copy-Item –Path "$PSScriptRoot\Create_Profile.bat" –Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"

#This installs SonicWall NetExtender.Note, this does a restart! If you perform /norestart the file will not install correct.
msiexec /i "C:\MDM\SonicWallNetExtender\NetExtender-10.2.315.msi" /q 




 



