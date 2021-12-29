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
- Uninstall Command: ```%ProgramFiles%\Sophos\Sophos Endpoint Agent\uninstallcli.exe```

Detection rules:
- File Path: %ProgramFiles%\Sophos\Sophos UI
- File: SophosSetup.exe