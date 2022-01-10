<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.10.22
    Type: Public
    Source: --
    Description: Deploys custom RDP session file. 
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Google Chrome is present on device
$installed = (Get-ChildItem "$($env:USERPROFILE)\Desktop\QuoteWerks.rdp")

## BEGIN IF ELSE STATEMENT

If($null -eq $installed) {

# Copies RDP session file onto desktop.
Copy-Item -Path "$PSScriptRoot\QuoteWerks.rdp" -Destination "$($env:USERPROFILE)\Desktop\QuoteWerks.rdp"


} else {
    # This shuts down powershell, if application is already installed.
    stop-process -ID $PID 
}