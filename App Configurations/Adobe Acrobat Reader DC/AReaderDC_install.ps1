<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 01.10.22
    Type: Public
    Source: --
    Description: Checks if Adobe Reader DC is installed, if not, application is then installed. 
    =============================================================================
#>

# Checks File Explorer if Adobe Reader DC is present on device
$pathone = (Get-ChildItem "C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe") 
$pathtwo = (Get-ChildItem "C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe")

## BEGIN IF ELSE STATEMENT

If($null -eq $pathone -or $null -eq $pathtwo) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\MDM\AdobeReaderDC" | Out-Null

# Copies Adobe Reader DC setup file into newly created folder. Note, you will need to change version. 
Copy-Item -Path "$PSScriptRoot\AcroRdrDC2100720099_en_US.exe" -Destination "C:\MDM\AdobeReaderDC\AcroRdrDC2100720099_en_US.exe"

#This installs Adobe Reader DC. Note, you will need to change version.
Start-Process -FilePath "C:\MDM\AdobeReaderDC\AcroRdrDC2100720099_en_US.exe" -ArgumentList "/sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES"

# Wait for the installation of Adobe Reader DC to deploy. 
Start-Sleep -s 180

# Removes Adobe Reader DC setup folder from main MDM folder. 
Remove-Item "C:\MDM\AdobeReaderDC\" -Force -Recurse

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}

