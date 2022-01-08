[Win 32 App]

This deploys the Google Chrome Enterprise application. First checks if Google Chrome is alreayd installed prior.   
1. Go to https://chromeenterprise.google/ 
2. Download .MSI version of Google Chrome. 
3. Put together scripta and .msi in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .MSI. 

Source File: chrome_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file chrome_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file uninstall.ps1``` 

Detection rules:
- Path: C:\Program Files\Google\Chrome\Application\
- File or folder: chrome.exe




