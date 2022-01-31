[Win 32 App]

This deploys the Zoiper5 application. First checks if Zoiper5 is already installed prior.   
1. Go to https://www.zoiper.com/en/voip-softphone/download/current
2. Download .EXE version for Windows 
3. Put together scripts and .exe in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .EXE. 

Source File: zoiper_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file zoiper_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file zoiper_uninstall.ps1``` 

Detection rules:
- Rule Type: Registry
- Kay Path: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe
- Dectection Method: Key exists






