:: Version 1.0.2
:: Batch file runs on startup to execult the provided PowerShell script below. 

CONSOLESTATE /Hide 

:: Runs PowerShell script to create shortcut icons
Powershell.exe -executionpolicy remotesigned -File  C:\MDM\Createlnk\Createlnk.ps1
