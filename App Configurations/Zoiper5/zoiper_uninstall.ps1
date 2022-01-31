<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.50
    Date: 01.31.22
    Type: Public
    Source: --
    Description: Checks if Zoiper is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Removes Notepad++ through uninstall.exe provided in source files. 
start-process -FilePath "C:\Program Files (x86)\Zoiper5\Uninstall.exe" -ArgumentList '/S' -Verb runas -Wait
