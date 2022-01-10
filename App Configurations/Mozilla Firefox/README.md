[Win 32 App]

This deploys the Mozilla Firefox Enterprise application. First checks if Mozilla Firefox is already installed prior.   
1. Go to https://www.mozilla.org/en-US/firefox/all/#product-desktop-release 
2. Download .MSI version of Mozilla Firefox. 
3. Put together scripts and .msi in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .MSI. 

Source File: firefox_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file firefox_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file uninstall.ps1``` 

Detection rules:
- Path: C:\Program Files\Mozilla Firefox\
- File or folder: firefox.exe




