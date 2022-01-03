:: Version 1.0.0
:: This batch file first excutes the profile.ps1 script to add the profile within the SonicWall registry. 
    :: Afterwards, it closes the SonicWall service in order for it to properly appear when a user opens the application.
        :: Once the script is excuted and service is killed, the batch file self destructs as the profile is now added to the device. 


CONSOLESTATE /Hide 

:: Executes powershell script
Powershell.exe -executionpolicy remotesigned -File  C:\MDM\SonicWallNetExtender\profile.ps1

:: Kills NetExtender service, so the profile can populate when end-user starts application
taskkill /f /im NEGui.exe

:: Deletes this batch file
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"