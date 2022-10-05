[Win 32 App]

This deploys the Dell Command Update application. First checks if Dell Command Update is already installed prior.   
1. Go to https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=8d5mc
2. Download .EXE version for Windows (Dell-Command-Update-Application_XXXMC_WIN_X.X.X_X00_0X.EXE)
3. Put together scripts and .exe in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing DellCommandUpdateApp_Setup.exe. 

Source File: DellCommandUpdateApp_Setup.exe

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```DellCommandUpdateApp_Setup.exe /S /v/qn```
- Uninstall Command: ```DellCommandUpdateApp_Setup.exe /S /x /v/qn``` 

Detection rules:
- Path: C:\Windows
- File or folder: System32

**ADDITIONAL NOTES**
--------------------
- Yes, the detection rules are set to the Windows folder. Currently unable to find the source file for Dell Command Updates, so I chose a common folder. 


