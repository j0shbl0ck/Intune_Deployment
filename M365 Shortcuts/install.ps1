<#

Author: Josh Block
Type: Public
Date: 12.17.21
Source: http://blog.petersenit.co.uk/2019/08/modern-management-part-nine-bginfo.html
Description: Creates the file folder 

#>

New-Item –ItemType Directory –Force –Path "C:\MDM\Createlnk" | Out-Null
Copy-Item –Path "$PSScriptRoot\Createlnk.ps1" –Destination "C:\MDM\Createlnk\Createlnk.ps1" 
Copy-Item –Path "$PSScriptRoot\Createlnk.bat" –Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Createlnk.bat"