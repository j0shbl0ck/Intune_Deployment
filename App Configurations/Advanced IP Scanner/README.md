[MSI App]

This runs the Advanced IP Scanner setup file onto specified device(s).  
1. Download the latest .exe version of Advanced IP Scanner: https://www.advanced-ip-scanner.com/
2. Follow provided steps in this article to get MSI: https://silentinstallhq.com/advanced-ip-scanner-silent-install-how-to-guide/
3. Upload MSI into Intune per usual. No command-line arguments were needed. 

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Command-line arugments: --
- Desktop Command-line script not required, but IF DESIRED: ```msiexec.exe /i "C:\Users\username\Downloads\ip_scan_en_us_Release_x.x.xxxx.msi" /qn```



[Win 32 App]

This deploys the Advanced IP Scanner application. First checks if Advanced IP Scanner is already installed prior.   
1. Download the latest .exe version of Advanced IP Scanner: https://www.advanced-ip-scanner.com/
2. Follow provided steps in this article to get MSI: https://silentinstallhq.com/advanced-ip-scanner-silent-install-how-to-guide/
3. Upload MSI into Intune per usual. No command-line arguments were needed. 

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and .MSI. 

Source File: adv_ip_scanner_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file adv_ip_scanner_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file adv_ip_scanner_uninstall.ps1``` 

Detection rules:
- Path: C:\Program Files (x86)\Advanced IP Scanner v2\
- File or folder: advanced_ip_scanner.exe

