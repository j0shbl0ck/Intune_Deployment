[Win 32 App]

This deploys the Dell Command Update application. First checks if Dell Command Update is already installed prior.   
1. Go to https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=8d5mc
2. Download .EXE version for Windows (Dell-Command-Update-Application_XXXMC_WIN_X.X.X_X00_0X.EXE)
3. Put together scripts and .exe in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing Dell-Command-Update-Application_XXXMC_WIN_X.X.X_X00_0X.EXE 

Source File: dellcommand_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file dellcommand_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file dellcommand_uninstall.ps1```

Detection rules:
- Path: C:\Windows
- File or folder: System32

**ADDITIONAL NOTES**
--------------------
- Yes, the detection rules are set to the Windows folder. Currently unable to find the source file for Dell Command Updates, so I chose a common folder. 


