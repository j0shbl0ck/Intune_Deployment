<#
.SYNOPSIS
    This script updates the Windows system and reboots if needed.
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 08.08.23
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://pureinfotech.com/install-windows-10-update-powershell/
#>

# Install the module to run Windows Update
Install-Module PSWindowsUpdate -Force

# Check updates with PowerShell
Get-WindowsUpdate

# Install the available Windows 10 updates
Install-WindowsUpdate -AcceptAll
