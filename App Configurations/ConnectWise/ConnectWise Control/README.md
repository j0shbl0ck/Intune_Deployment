[Win 32 App]

Provided documentation on how to install ConnectWise Control.  
1. Download the ConnectWise Control installer from the ConnectWise Control website. For this script, choose the .MSI installer.
2. Gather the three scripts and setup file into a folder.
2. Wrap folder via IntuneWinAppUtil.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing ConnectWise Control msi. 

Source File: cw_control_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file cw_control_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file cw_control_uninstall.ps1``` 

Detection rules:
- Rule Type: Use custom detection script
- Script file: cw_control_detection.ps1
- Run as 32bit: No
- Enforce script signature: No
