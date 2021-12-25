<#

Author: Josh Block
Type: Public
Date: 12.17.21
Source: http://blog.petersenit.co.uk/2019/08/modern-management-part-nine-bginfo.html
Description: Creates the file folder 

#>

Remove-Item -Path "C:\MDM\Createlnk" -Recurse -Force -Confirm:$false
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Createlnk.bat" -Force -Confirm:$false

Return 0