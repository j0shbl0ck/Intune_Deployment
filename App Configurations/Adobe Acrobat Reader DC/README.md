[Win 32 App]

This runs the Adobe Acrobat Reader DC setup silently with no prompts or special configuration.  
1. Download the latest version of Adobe Acrobat Reader DC: https://get.adobe.com/reader/enterprise/
2. Wrap the file and scripts via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file AReaderDC_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file AReaderDC_uninstall.ps1```

Detection rules:
- Rule Type: Use custom detection script
- Script file: AReaderDC_detection.ps1
- Run as 32bit: No
- Enforce script signature: No
