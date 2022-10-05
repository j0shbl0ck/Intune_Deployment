<#
.SYNOPSIS
    Installs the latest version of Dell Command Update
    Author: Josh Block
.NOTES
    Version: 1.0.2
    Date: 05.03.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://github.com/FlorianSLZ/scloud/tree/main/Program%20-%20win32/Dell%20Command%20Update
    https://scloud.work/en/dell-driver-intune/
#>

# Checks File Explorer if Dell Command Update is present on device
$pathone = (Get-ChildItem "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe")

If($null -eq $pathone) {

    # ======== CREATE NEW FOLDER AND COPY FILES ========

    # Creates new folder on C: Drive to host setup files
    New-Item -ItemType Directory -Force -Path "C:\MDM\DellCommand" | Out-Null

    # Copies Dell Command Update setup file into newly created folder. Note, you will need to change version. 
    Copy-Item -Path "$PSScriptRoot\Dell-Command-Update-Application_8D5MC_WIN_4.3.0_A00_02.EXE" -Destination "C:\MDM\Dell-Command-Update-Application_8D5MC_WIN_4.3.0_A00_02.EXE"

    # ======== INSTALL DELL COMMAND UPDATE ========

    #This installs Dell Command Update. Note, you will need to change version.
    Start-Process -FilePath "C:\MDM\Dell-Command-Update-Application_8D5MC_WIN_4.3.0_A00_02.EXE" -ArgumentList "/S"

    # Wait for the installation of Dell Command Update to deploy. 
    Start-Sleep -s 60

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}