<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 05.03.22
    Type: Public
    Source: --
    Description: Installs the latest version of Dell Command Update
    File Location: \DellInc.DellCommandUpdate_4.1.17.0_x86__htrsf667h5kn2\DCU.Classic\DellCommandUpdate.exe
    =============================================================================
#>

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\DellCommand" | Out-Null

# Copies Dell Command Update setup file into newly created folder. Note, you will need to change version. 
Copy-Item -Path "$PSScriptRoot\DellCommandUpdateApp_Setup.exe" -Destination "C:\MDM\DellCommandUpdateApp_Setup.exe"

#This installs Dell Command Update. Note, you will need to change version.
Start-Process -FilePath "C:\MDM\DellCommandUpdateApp_Setup.exe" -ArgumentList "/S /v/qn"

# Wait for the installation of Dell Command Update to deploy. 
Start-Sleep -s 180

# Removes Dell Command Update setup folder from main MDM folder. 
Remove-Item "C:\MDM\AdobeReaderDC\" -Force -Recurse

