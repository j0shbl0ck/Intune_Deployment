[Win 32 App]

This deploys the Google Chrome Enterprise application. First checks if Brave Browswer is already installed prior.   
1. Go to https://laptop-updates.brave.com/latest/winx64
2. Download .exe version of Brave Browser. 
3. Put together scripts and .exe in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .exe. 

Source File: bbrowswer_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file bbrowswer_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file bbrowswer_uninstall.ps1``` 

Detection rules:
- 
- 
- 






