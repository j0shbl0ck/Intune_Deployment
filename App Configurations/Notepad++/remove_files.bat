:: Version 1.0.3
:: This batch file excutes on startup to remove the folders and files below. In a sense, it removes the folder, then self distructs itself. 

CONSOLESTATE /Hide 

:: This removes the DeviceRename folder created.
rmdir C:\MDM\NP+ /Q

:: This removes the batch file copied into the Startup folder. 
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\remove_files.bat"