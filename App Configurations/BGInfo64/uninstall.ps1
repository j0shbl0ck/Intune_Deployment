<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 11.03.21
    Type: Public
    Source: --
    Description: Unistall BGInfo64. 
    =============================================================================
#>

# Removes newly created folder that was used in "install.ps1"
Remove-Item -Path "C:\Program Files\BGInfo" -Recurse -Force -Confirm:$false

# Removes application shortcut that was created with "install.ps1"
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\BGInfo.lnk" -Force -Confirm:$false

# Success code for logging
Return 0