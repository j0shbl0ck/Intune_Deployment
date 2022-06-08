[Win 32 App]

This runs the Intel® Driver & Support Assistant setup silently with no prompts or special configuration.

Download the latest version of Intel® Driver & Support Assistant: https://www.intel.com/content/www/us/en/support/intel-driver-support-assistant.html
Wrap the file and scripts via IntuneWinAppUtil
INTUNE APPLICATION SETUP
Program setup:

Install Commmand: powershell -ex bypass -file idainstall.ps1
Uninstall Command: powershell -ex bypass -file ida_uninstall.ps1
Detection rules:

Rule Type: Use custom detection script
Script file: xxx
Run as 32bit: No
Enforce script signature: No



[Win 32 App]

This runs the Intel® Driver & Support Assistant setup silently with no prompts or special configuration.
1. Download the latest version of Intel® Driver & Support Assistant: https://www.intel.com/content/www/us/en/support/intel-driver-support-assistant.html
2. Wrap the thr ee powershell scripts and via IntuneWinAppUtil

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing all six files. 

Source File: swinstall.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file swinstall.ps1```
- Uninstall Command: ```powershell -ex bypass -file swuninstall.ps1```

Detection rules:
- Path: C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender\
- File or folder: NEGui.exe