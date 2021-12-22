CONSOLESTATE /Hide 

Powershell.exe -executionpolicy remotesigned -File  C:\MDM\SonicWallNetExtender\profile.ps1

taskkill /f /im NEGui.exe

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"