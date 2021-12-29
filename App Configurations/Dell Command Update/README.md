[Win 32 App]

Provided documentation on how to install Dell Command Updates. You will need to extract the setup file from the primary download.  
1. Go to https://www.dell.com/support/kbdoc/en-us/000177325/dell-command-update
2. Open PowerShell as admin, and redirect to the Folder where the, Dell-Command-Update-Application_XXXXX_WIN_x.x.x_A00.EXE is.
3. Run: ```.\Dell-Command-Update-Windows-Universal-Application_XXXX_WIN_x.x.x_A00.EXE /s /e=C:\DELLCOMMAND\```
4. After extracting .exe (DellCommandUpdateApp_Setup.exe) begin Intune wrapping.

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
- File Path: C:\Program Files\Dell\CommandUpdate
- File: dcu-cli.exe

**ADDITIONAL NOTES**
--------------------
- As of now, currently unable to find proper uninstall file location.
- Noticed Microsoft does have Dell Command Update on the [Microsoft store](https://www.microsoft.com/en-us/p/dell-command-update/9n0k4b9pjt60) so this may be another method in adding the application to the device.


