:: Version 1.0.3
:: Batch file runs after inital Intune app deployment to run a rename PowerShell script. 

CONSOLESTATE /Hide 
:: This opens Command Prompt and runs "rename_device.ps1"
powershell.exe -executionpolicy remotesigned -File "C:\MDM\DeviceRename\rename_device.ps1"