[Win 32 App]

This deploys the Google Chrome Enterprise application. First checks if Google Chrome is alreayd installed prior.   
1. Go to https://chromeenterprise.google/ 
2. Download .MSI version of Google Chrome. 
3. Put together script and .msi in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing script and .MSI. 

Source File: chrome_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file chrome_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file uninstall.ps1``` 

Detection rules:
- Path: C:\Windows
- File or folder: System32

**ADDITIONAL NOTES**
--------------------
- Yes, the detection rules are set to the Windows folder. Currently unable to find the source file for Dell Command Updates, so I chose a common folder. 
- As of now, currently unable to find proper uninstall file location.
- Noticed Microsoft does have Dell Command Update on the [Microsoft store](https://www.microsoft.com/en-us/p/dell-command-update/9n0k4b9pjt60) so this may be another method in adding the application to the device.


