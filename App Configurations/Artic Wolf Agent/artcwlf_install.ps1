<#
.SYNOPSIS
    This script installs Artic Wolf Agent, Sysmon, and Sysmon Assistant. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 08.2.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://docs.arcticwolf.com/agent/installing_windows.html
    https://docs.arcticwolf.com/agent/installing_sysmon.html
#>

# Checks File Explorer if Artic Wolf is present on device
$pathone = (Get-ChildItem "C:\Program Files (x86)\Arctic Wolf Networks\Agent\Win32ui.exe") 

## BEGIN IF ELSE STATEMENT

If($null -eq $pathone) {

    # ======== CREATE NEW FOLDER AND COPY FILES ========

    # Creates new folder on C: Drive to host setup files
    New-Item -ItemType Directory -Force -Path "C:\MDM\AWA_SYSMON" | Out-Null
    
    # Copies Artic Wolf Agent setup file to newly created folder
    Copy-Item -Path "$PSScriptRoot\arcticwolfagent-2022-01_04.msi" -Destination "C:\MDM\AWA_SYSMON\arcticwolfagent-2022-01_04.msi"
    
    # Copies Sysmon 32-bit setup file to newly created folder
    Copy-Item -Path "$PSScriptRoot\Sysmon.exe" -Destination "C:\MDM\AWA_SYSMON\Sysmon.exe"

    # Copies Sysmon 64-bit setup file to newly created folder
     Copy-Item -Path "$PSScriptRoot\Sysmon64.exe" -Destination "C:\MDM\AWA_SYSMON\Sysmon64.exe"

    # Copies Sysmon Assistant setup file to newly created folder
    Copy-Item -Path "$PSScriptRoot\sysmonassistant-1_0_1.msi" -Destination "C:\MDM\AWA_SYSMON\sysmonassistant-1_0_1.msi"

    # ======== INSTALL ARTIC WOLF AGENT ========

    #This installs Artic Wolf Agent. Change msi version, CUSTOMER_UUID, and REGISTER_DNS to match your environment.
    MsiExec /i "C:\MDM\AWA_SYSMON\arcticwolfagent-2022-01_04.msi" /qn CUSTOMER_UUID=e9e9ea99-e999-99ee-9ee9-e9e99999e999 REGISTER_DNS=activate.agent-common.prod.us999-prod.arcticwolf.net /l*v scout_install.log
    # Wait for Artic Wolf Agent to install
    Start-Sleep -s 10
    
    # ======== INSTALL SYSMON ========
    # You can only have one or the other installed at a time on a device. If you are not using sysmon assistant, uncomment your perferred Sysmon install and comment out sysmon assistant line.

<#     # This installs Sysmon 32-bit.
    Set-Location "C:\MDM\AWA_SYSMON\"
    .\Sysmon.exe -i -accepteula
    Start-Sleep -s 5 #>


<#     # This installs Sysmon 64-bit.
    Set-Location "C:\MDM\AWA_SYSMON\"
    .\Sysmon64.exe -i -accepteula
    Start-Sleep -s 5 #>

    # ======== INSTALL SYSMON ASSISTANT ========
    <# As long as sysmon64 or sysmon is in same folder directory, sysmonassistant can install the sysmon application. 
    We took care of this by copying all setup files in a new directory. 
    Sysmon Assistant targets system type automatically. #>
    msiexec /i "C:\MDM\AWA_SYSMON\sysmonassistant-1_0_1.msi" /qn
    
    # ======== REMOVE SETUP FILES ========
    
    # Removes AWA_SYSMON setup folder from main MDM folder. 
    #Remove-Item "C:\MDM\AWA_SYSMON\" -Force -Recurse
    
} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}