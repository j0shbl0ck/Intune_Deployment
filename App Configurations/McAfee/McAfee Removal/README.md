[Win 32 App]

This removes the pre-installed McAfee application found on Lenovo devices
1. Download [**MCPR.exe**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/MCPR.exe) 🔽
2. Run the .exe but do not continue after the file extraction portion of the setup.exe
3. Open C:\temp and copy the entire MCPR folder to a new location
4. Create a new folder called **McAfeeRemover**
3. Put together script and MCPR in folder to begin Intune wrapping.

**INTUNE WINAPPUTIL SETUP**
---------------------
Source Folder: Folder path containing script and MCPR. 

Source File: remove_mcafee.ps1

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Install Commmand: ```powershell -ex bypass -file remove_mcafee.ps1```
- Uninstall Command: ```powershell -ex bypass -file remove_mcafee.ps1``` 

Device restart behavior:
- Intune will force a mandatory device restart

Detection rules:
- Rule Type: Registry
- Kay Path: HKEY_LOCAL_MACHINE\SOFTWARE\McAfee
- Dectection Method: Key does not exist






