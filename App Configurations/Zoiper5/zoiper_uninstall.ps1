<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 01.31.22
    Type: Public
    Source: --
    Description: Checks if Zoiper is installed, if not, installs the application.
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Removes Notepad++ through uninstall.exe provided in source files. 
$cmdprompt = ""%ProgramFiles(x86)%\Zoiper5\Uninstall.exe" --mode unattended --unattendedmodeui none"
cmd.exe /c $cmdprompt
