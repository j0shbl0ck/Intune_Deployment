<#
.SYNOPSIS
    Unistall Mozilla Firefox without restart.
    Author: Josh Block
.NOTES
    Version: 1.0.2
    Date: 01.10.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://support.mozilla.org/en-US/kb/silently-install-uninstall-firefox-enterprise
#>

#Removes Mozilla Firefox by helper.exe.
Start-Process 'C:\Program Files\Mozilla Firefox\uninstall\helper.exe' /S