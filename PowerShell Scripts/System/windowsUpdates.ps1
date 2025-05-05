<#
.SYNOPSIS
    This script updates the Windows system and reboots if needed.
    Author: Josh Block
.NOTES
    Version: 1.0.1
    Date: 08.08.23
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://pureinfotech.com/install-windows-10-update-powershell/
#>

# Set the execution policy to bypass
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Install the module to run Windows Update
Install-Module -Name PSWindowsUpdate -Confirm:$false

# Import the module to run Windows Update
Import-Module PSWindowsUpdate

# Check updates with PowerShell
Get-WindowsUpdate

# Install the available Windows updates
Install-WindowsUpdate -AcceptAll -IgnoreReboot
