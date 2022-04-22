<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.4
    Date: 12.17.21
    Type: Public
    Source: https://www.pdq.com/blog/pdq-deploy-and-powershell/
    Description: This creates local desktop shortcuts of the M365 products.
    =============================================================================
    To find the source file location, please refer to creating a custom start menu. 
        1. Add all applications wanting to be seen on desktop, to the start menu
        2. Export start menu as .xml
        3. See file path locations on the .xml and insert into the $ShortcutFileLocaiton
        4. Export Shortcut location to desktop with $ShortcutLocation
#>


#Creates Outlook shortcut on the desktop.
$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Outlook.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Outlook.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

#Creates Excel shortcut on the desktop.
$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Excel.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

#Creates Word shortcut on the desktop.
$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\Word.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()

#Creates PowerPoint shortcut on the desktop.
$SourceFileLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk"
$ShortcutLocation = "$env:USERPROFILE\Desktop\PowerPoint.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()





