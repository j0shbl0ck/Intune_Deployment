[Win 32 App]

This installs ConnectWise Manage (64-bit) silently with no prompts or special configuration.  
1. Download the latest version of ConnectWise Manage [here](https://university.connectwise.com/University/PageView.aspx?short_name=workstation-installation) 
2. Wrap the file and scripts via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file cwm_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file cwm_uninstall.ps1```

Detection rules:
- Rule Type: Use custom detection script
- Script file: cwm_detection.ps1
- Run as 32bit: No
- Enforce script signature: No
