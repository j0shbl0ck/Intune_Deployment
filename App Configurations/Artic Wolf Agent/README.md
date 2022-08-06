[Win 32 App]

This deploys the Artic Wolf agent application. First checks if Artic Wolf agent is already installed prior. If not, it installs it, plus also installs Sysmon and Sysmon Agent Assistant.   
1. Gather Artic Wolf Agent msi file from Artic Wolf Portal
2. Gather Sysmon Assistant zip file from Artic Wolf Portal 
3. Check install script ensuring AWA information and versions are correct/updated
3. Put together scripts, sysmon files (sysmon.exe,sysmon64.exe,sysmonassistant-x_x_x.msi), and arcticwolfagent-x0xx-0x_0x.msi, in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing scripts and setup files.

Source File: artcwlf_install.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file artcwlf_install.ps1```
- Uninstall Command: ```powershell -ex bypass -file artcwlf_uninstall.ps1``` 

Detection rules:
- Rule Type: Use custom detection script
- Script file: artcwlf_detection.ps1
- Run as 32bit: No
- Enforce script signature: No