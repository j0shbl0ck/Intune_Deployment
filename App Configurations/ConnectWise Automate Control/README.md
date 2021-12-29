[Win 32 App]

Provided documentation on how to install ConnectWise Automate Control.  
1. Wrap files via IntuneWinAppUtil.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing ControlCenterInstaller.exe. 

Source File: ControlCenterInstaller.exe

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```ControlCenterInstaller.exe /s```
- Uninstall Command: ```C:\Program Files (x86)\LabTech Client\unistall.exe /s``` 

Detection rules:
- File Path: C:\Program Files (x86)\LabTech Client
- File: ControlCenterInstaller.exe