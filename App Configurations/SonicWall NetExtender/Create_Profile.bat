:: Version 1.0.1
:: This batch file first excutes the profile.ps1 script to add the profile within the SonicWall registry. 
:: =================================

@echo off

:: Executes powershell script
Powershell.exe -Executionpolicy bypass -File  "C:\MDM\SonicWallNetExtender\profile.ps1"
