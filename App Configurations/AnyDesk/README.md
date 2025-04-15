[Win 32 App]

This deploys a custom-build AnyDesk application. First checks if AnyDesk is already installed prior.   
1. Go to your AnyDesk admin page
2. Download .MSI version of AnyDesk. 
3. Put together scripts and .msi in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .MSI. 

Source File: anydesk_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file anydesk_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file anydesk_uninstall.ps1``` 

Detection rules:
- Rule Type: Use custom detection script
- Script file: anydesk_detection.ps1
- Run as 32bit: Yes
- Enforce script signature: No







