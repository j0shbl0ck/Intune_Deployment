[Win 32 App]

This runs the Adobe Acrobat Reader DC setup silently with no prompts or special configuration.  
1. Download the latest version of Adobe Acrobat Reader DC: https://get.adobe.com/reader/
2. Wrap the file via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file AReaderDC_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file AReaderDC_uninstall.ps1```

Detection rules:
- Path: C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\
- File or folder: AcroRd32.exe