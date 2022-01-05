[Win 32 App]

This runs the Adobe Acrobat Reader DC setup silently with no prompts or special configuration.  
1. Download the latest version of Adobe Acrobat Reader DC: https://get.adobe.com/reader/
2. Wrap the file via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```AcroRdrDC2100720099_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES```
- Uninstall Command: ```msiexec /x “{AC76BA86-7AD7-1033-7B44-AC0F074E4100}” /q```

Detection rules:
- Path: C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\
- File or folder: AcroRd32.exe