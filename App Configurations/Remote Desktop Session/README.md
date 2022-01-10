[Win 32 App]

This deploys a custom RDP session file of your choice.    
1. Ensure RDP name is renamed to your RDP session file name in script.
2. Put together scripts and RDP session file in folder to begin Intune wrapping.
3. Change Detection rules to renamed folders. 

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing RDP session file and scripts. 

Source File: rdp_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file rdp_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file rdp_uninstall.ps1``` 

Detection rules:
- Path: C:\RDP_Sessions\QuoteWerks\
- File or folder: QuoteWerks.rdp




