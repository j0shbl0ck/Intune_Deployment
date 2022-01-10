<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 01.10.22
    Type: Public
    Source: --
    Description: Deploys custom RDP session file. 
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks if RDP Session is present on device
$installed = (Get-ChildItem "C:\RDP_Sessions\QuoteWerks\QuoteWerks.rdp")

## BEGIN IF ELSE STATEMENT

If($null -eq $installed) {

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\RDP_Sessions\QuoteWerks" | Out-Null

# Copies RDP session file onto desktop.
Copy-Item -Path "$PSScriptRoot\QuoteWerks.rdp" -Destination "C:\RDP_Sessions\QuoteWerks\QuoteWerks.rdp"

} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}
