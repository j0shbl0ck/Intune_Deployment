[Win 32 App]

This deploys the Google Chrome Enterprise application. First checks if Google Chrome is already installed prior.   
1. Go to https://chromeenterprise.google/ 
2. Download .MSI version of Google Chrome. 
3. Put together scripts and .msi in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .MSI. 

Source File: chrome_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file chrome_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file chrome_uninstall.ps1``` 

Detection rules:
- Rule Type: Registry
- Kay Path: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe
- Dectection Method: Key exists






