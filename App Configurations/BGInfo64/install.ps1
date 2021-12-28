<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.21.21
    Type: Public
    Source: http://blog.petersenit.co.uk/2019/08/modern-management-part-nine-bginfo.html
    Description: Copies the BGInfo64.exe and custom.bgi onto device and runs on logon.
    =============================================================================
#>

# Creates new folder on device
New-Item -ItemType Directory -Force -Path "C:\Program Files\BGInfo" | Out-Null

# Copies source files onto device into newly created folder
Copy-Item -Path "$PSScriptRoot\Bginfo64.exe" -Destination "C:\Program Files\BGInfo\BGInfo64.exe"
Copy-Item -Path "$PSScriptRoot\Workstations.bgi" -Destination "C:\Program Files\BGInfo\Workstations.bgi"

# Uses PowerShell to run scripts contained in source folder
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo.lnk")
$ShortCut.TargetPath="`"C:\Program Files\BGInfo\BGInfo64.exe`""
$ShortCut.Arguments="`"C:\Program Files\BGInfo\Workstations.bgi`" /timer:0 /silent /nolicprompt"
$ShortCut.IconLocation = "BGInfo64.exe, 0";
$ShortCut.Save()

