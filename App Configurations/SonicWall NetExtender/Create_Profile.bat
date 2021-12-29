rem This batch file first excutes the profile.ps1 script to add the profile within the SonicWall registry. Afterwards, it closes the SonicWall service in order for it to properly appear when a user opens the application.
rem Once the script is excuted and application closed, the batch file self destructs as the profile is now added to the device. 

CONSOLESTATE /Hide 

Powershell.exe -executionpolicy remotesigned -File  C:\MDM\SonicWallNetExtender\profile.ps1

taskkill /f /im NEGui.exe

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"