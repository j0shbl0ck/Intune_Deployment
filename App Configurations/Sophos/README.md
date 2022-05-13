[Win 32 App]

This runs the cliet specifed SophosSetup.exe file onto specified device(s).  
1. Download the client specified SophosSetup.exe
2. Wrap the SophosSetup.exe via IntuneWinAppUtil

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing SophosSetup.exe. 

Source File: SophosSetup.exe

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```SophosSetup.exe --products=antivirus,intercept --quiet```
- Uninstall Command: ```MsiExec.exe /X{0EA5323F-DE1B-480C-911E-7827E5EA20E9}```

Detection rules:
- Path: %ProgramFiles%\Sophos\Sophos UI
- File or folder: SophosSetup.exe