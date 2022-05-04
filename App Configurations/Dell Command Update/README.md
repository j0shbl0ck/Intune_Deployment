[Win 32 App]

Provided documentation on how to install Dell Command Updates. You will need to extract the setup file from the primary download.  
1. Go to https://www.dell.com/support/kbdoc/en-us/000177325/dell-command-update
2. Open PowerShell as admin, and redirect to the Folder where the, Dell-Command-Update-Application_XXXXX_WIN_x.x.x_A00.EXE is.
3. Run: ```.\Dell-Command-Update-Windows-Universal-Application_XXXX_WIN_x.x.x_A00.EXE /s /e=C:\DELLCOMMAND\```
4. Navigate to C:\DELLCOMMAND after extracting .exe to find the file, DellCommandUpdateApp_Setup.exe and then begin Intune wrapping.

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
- As of now, currently unable to find proper uninstall file location.
- Noticed Microsoft does have Dell Command Update on the [Microsoft store](https://www.microsoft.com/en-us/p/dell-command-update/9n0k4b9pjt60) so this may be another method in adding the application to the device.


