[Win 32 App]

This runs the Advanced IP Scanner setup file onto specified device(s).  
1. Download the latest version of Advanced IP Scanner: https://www.advanced-ip-scanner.com/
2. Wrap the file via IntuneWinAppUtil

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```Advanced_IP_Scanner_2.5.3850.exe /S```
- Uninstall Command: ```msiexec /x "{816038FA-53B2-4F36-A9F2-8F6B8B81C7B0}" /q```

Detection rules:
- File Path: C:\Program Files (x86)\Advanced IP Scanner\
- File: advanced_ip_scanner.exe


https://silentinstallhq.com/advanced-ip-scanner-silent-install-how-to-guide/