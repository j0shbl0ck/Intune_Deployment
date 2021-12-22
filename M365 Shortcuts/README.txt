[Win 32]

This creates the M365 shortcuts on the desktop via PowerShell and Batch on startup everytime. You will need to add onto the list of applications in the Createlnk.ps1 script if desired. 

1. Download all four files and customize Createlnk.ps1 script.
2. Wrap all four files via IntuneWinAppUtil
  * Source Folder: Folder path containing all four files.
  * Setup File: install.ps1
  
Install command: powershell -ex bypass -file install.ps1
Uninistall command: powershell -ex bypass -file uninstall.ps1

Detection rules:
  File Path: C:\MDM\Createlnk\
  File: Createlnk.ps1
