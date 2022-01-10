<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.10.22
    Type: Public
    Source: https://support.mozilla.org/en-US/kb/silently-install-uninstall-firefox-enterprise
    Description: Unistall Mozilla Firefox without restart.
    =============================================================================
#>

#Removes Mozilla Firefox by helper.exe.
Start-Process 'C:\Program Files\Mozilla Firefox\uninstall\helper.exe' /S