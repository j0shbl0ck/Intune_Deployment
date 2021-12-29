<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.29.21
    Type: Public
    Source: --
    Description: Removes Notepad++ from device.
    =============================================================================
#>

# Removes Notepad++ through uninstall.exe provided in source files. 
start-process -FilePath "C:\Program Files\Notepad++\uninstall.exe" -ArgumentList '/S' -Verb runas -Wait

# Removes remaing files and folder created by Notepad++
Remove-Item -Path "C:\Program Files\Notepad++" -Recurse -Force -Confirm:$false