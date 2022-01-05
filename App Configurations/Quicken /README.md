[Win 32 App]

This runs the Quicken accounting software.  
1. Download the latest version of Adobe Acrobat Reader DC: https://www.quicken.com/support/download-install
2. Wrap the file via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```AcroRdrDC2100720099_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES```
- Uninstall Command: ```msiexec.exe /x {62D93E3E-2F8E-42BD-9343-896F4F0031D3} /q```

Detection rules:
- File Path: C:\Program Files (x86)\Quicken
- File: qw.exe