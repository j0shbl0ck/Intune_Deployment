<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.17.21
    Type: Public
    Source: http://blog.petersenit.co.uk/2019/08/modern-management-part-nine-bginfo.html
    Description: Removes folder and files created/copied in "install.ps1" and "Createlnk.ps1"
    =============================================================================
#>

# Removes newly created folder that was used in "Createlnk.ps1"
Remove-Item -Path "C:\MDM\Createlnk" -Recurse -Force -Confirm:$false

# Removes application shortcut that was created with "Createlnk.ps1"
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Createlnk.bat" -Force -Confirm:$false

# Return code for logging
Return 0