<#

Author: Josh Block (jblock@trustinfinitech.com)
Date: 12.17.21
Source: https://www.pdq.com/blog/pdq-deploy-and-powershell/
Description: This creates local desktop shortcuts of the M365 products.

#>


$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Outlook.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Outlook.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Excel.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Word.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\PowerPoint.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()





