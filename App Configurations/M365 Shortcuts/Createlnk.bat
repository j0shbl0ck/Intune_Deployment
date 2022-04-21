:: Version 1.0.1
:: Batch file runs on startup to execult the provided PowerShell script below. 

CONSOLESTATE /Hide 

:: Runs PowerShell script to create shortcut icons
Powershell.exe -Command "& {Start-Process Powershell.exe -ArgumentList '-ExecutionPolicy Bypass -File C:\MDM\Createlnk\Createlnk.ps1' -Verb RunAs}"