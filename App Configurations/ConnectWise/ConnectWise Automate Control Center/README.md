[Win 32 App]

This installs ConnectWise Automate Control Center silently with no prompts or special configuration.  
1. Download the latest version of ConnectWise Automate Control Center through your online Control Center portal
2. Wrap the setup file via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```ControlCenterInstaller.exe /s```
- Uninstall Command: ```C:\Program Files (x86)\LabTech Client\unistall.exe /s```

Detection rules:
- Path: C:\Program Files (x86)\LabTech Client
- File or folder: ControlCenterInstaller.exe