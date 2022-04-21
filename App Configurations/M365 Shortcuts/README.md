[Win 32 App]

This creates the M365 shortcuts on the desktop via PowerShell and Batch on startup everytime. You will need to add onto the list of applications in the Createlnk.ps1 script if desired.  
1. Download all four files and customize Createlnk.ps1 script.
2. Wrap all four files via IntuneWinAppUtil

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing all four files. 

Source File: m365install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file m365install.ps1```
- Uninstall Command: ```powershell -ex bypass -file m365uninstall.ps1```

Detection rules:
- Path: C:\MDM\Createlnk\
- File or folder: Createlnk.ps1