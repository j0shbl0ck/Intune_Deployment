[Win 32 App]

This deploys a .csv containing old and new device names alongside multiple scripts to make the impossible, possible. 
1. Download all five files and customize/replace <b>device_name_list.csv</b>.
2. Wrap all five files via IntuneWinAppUtil

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
- File Path: C:\MDM\DeviceRename
- File: device_name_list.csv