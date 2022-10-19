<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.29.21
    Type: Public
    Source: https://docs.microsoft.com/en-us/mem/autopilot/add-devices#collecting-the-hardware-hash-from-existing-devices-using-powershell
    Description: This iniates the hardware hash upload from PowerShell and syncs realtime into Intune. 
    =============================================================================
#>

# PowerShell.exe -ExecutionPolicy Bypass
Install-Script -name Get-WindowsAutopilotInfo -Force
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Get-WindowsAutoPilotInfo -Online