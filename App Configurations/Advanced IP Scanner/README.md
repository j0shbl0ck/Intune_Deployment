[MSI App]

This runs the Advanced IP Scanner setup file onto specified device(s).  
1. Download the latest .exe version of Advanced IP Scanner: https://www.advanced-ip-scanner.com/
2. Follow provided steps in this article to get MSI: https://silentinstallhq.com/advanced-ip-scanner-silent-install-how-to-guide/
3. Upload MSI into Intune per usual. No command-line arguments were needed. 

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Command-line arugments: --
- Desktop Command-line script if desired: ```msiexec.exe /i "C:\Users\username\Downloads\ip_scan_en_us_Release_x.x.xxxx.msi" /qn```

