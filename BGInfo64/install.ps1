<#

Author: Josh Block 
Type: Public
Date: 12.14.21
Source: http://blog.petersenit.co.uk/2019/08/modern-management-part-nine-bginfo.html
Description: Copies the BGInfo64.exe and custom.bgi onto device and runs on logon.

#>


New-Item �ItemType Directory �Force �Path "C:\Program Files\BGInfo" | Out-Null
Copy-Item �Path "$PSScriptRoot\Bginfo64.exe" �Destination "C:\Program Files\BGInfo\BGInfo64.exe"
Copy-Item �Path "$PSScriptRoot\Workstations.bgi" �Destination "C:\Program Files\BGInfo\Workstations.bgi"

$Shell = New-Object �ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo.lnk")
$ShortCut.TargetPath="`"C:\Program Files\BGInfo\BGInfo64.exe`""
$ShortCut.Arguments="`"C:\Program Files\BGInfo\Workstations.bgi`" /timer:0 /silent /nolicprompt"
$ShortCut.IconLocation = "BGInfo64.exe, 0";
$ShortCut.Save()

