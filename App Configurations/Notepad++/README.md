[Win 32 App]

This runs the Notepad++ setup silently with no prompts or special configuration.  

1. Download all three files: install.ps1, uninstall.ps1, and most updated version of Notepad++
2. Change version number in both **install.ps1** and **uninstall.ps1**
2. Wrap all three files via IntuneWinAppUtil
  * Source Folder: Folder path containing all three files.
  * Setup File: install.ps1
  
Install command: ```powershell -ex bypass -file install.ps1```

Uninstall command: ```powershell -ex bypass -file uninstall.ps1```

Detection rules:
- File Path: C:\Program Files\Notepad++
- File: notepad++.exe