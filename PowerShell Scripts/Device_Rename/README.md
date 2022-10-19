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
- Install Commmand: ```powershell -ex bypass -file rename_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file rename_uninstall.ps1```

Detection rules:

*Due to all files being removed after install, Intune throws error "The application was not detected after installation completed successfully. To resolve this, I have Intune targeting the well-known, explore.exe that is contained in the system. You will need to manually check the device in seeing if the name updated.*
- Path: C:\Windows\
- File or folder: explorer.exe



