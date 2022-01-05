[Win 32 App]

This runs the SonicWall NetExtender setup file and custom profile onto specified device(s).  
1. Download the latest version of SonicWall NetExtender: https://www.mysonicwall.com/muir/freedownloads
2. Wrap the three powershell scripts, setup file, and batch file via IntuneWinAppUtil

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing all five files. 

Source File: install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file install.ps1```
- Uninstall Command: ```powershell -ex bypass -file uninstall.ps1```

Detection rules:
- Path: C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender\
- File or folder: NEGui.exe