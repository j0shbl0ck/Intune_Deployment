[Win 32 App]

This pulls together BGInfo64.exe and your custom .bgi file to make it load on startup.  
1. Download all four files and replace [Workstation.bgi] with your custom .bgi file.
2. Wrap files via IntuneWinAppUtil.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing all four files. 

Source File: BGInfo64.exe

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file install.ps1```
- Uninstall Command: ```powershell -ex bypass -file uninstall.ps1``` 

Detection rules:
- File Path: C:\Program Files\BGInfo
- File: Workstations.bgi