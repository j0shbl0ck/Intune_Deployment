<#
Author: J Block 
Type: Public
Date: 11.03.21
Source:
Description: Unistall BGInfo64. 
#>

Remove-Item -Path "C:\Program Files\BGInfo" -Recurse -Force -Confirm:$false
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\BGInfo.lnk" -Force -Confirm:$false

Return 0