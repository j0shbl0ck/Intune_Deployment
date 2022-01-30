:: Version 1.0.2
    :: This batch file starts on startup after SW is uninstalled. 
        :: Copies the profile.bat to startup folder as well.
            ::It looks to run the SonicWall NetExtender MSI afterwards.
                :: Batch files deletes itself if the Create_Profile.bat is already in startup folder
:: =================================

@echo off

:: Checks if Create_Profile.bat is already in startup folder.
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat" (
    :: Deletes this batch file
    del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\runinstall.bat"
) else (
    :: Copies profile.bat to startup folder
    xcopy "C:\MDM\SonicWallNetExtender\Create_Profile.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat"
    :: Install SonicWall NetExtender VPN
    Powershell.exe msiexec /i "C:\MDM\SonicWallNetExtender\NetExtender-10.2.315.msi" /q
)


