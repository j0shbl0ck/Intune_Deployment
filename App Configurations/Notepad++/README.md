[Win 32 App]

This runs the Notepad++ setup silently with no prompts or special configuration.  
1. Download all three files: install.ps1, uninstall.ps1, and most updated version of Notepad++
2. Change version number in both **install.ps1** and **uninstall.ps1**
2. Wrap all three files via IntuneWinAppUtil

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing all three files.

Source File: install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install command: ```powershell -ex bypass -file np_install.ps1```
- Uninstall command: ```powershell -ex bypass -file uninstall.ps1```

Detection rules:
- Path: C:\Program Files\Notepad++
- File or folder: notepad++.exe
