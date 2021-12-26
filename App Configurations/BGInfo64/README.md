[Win32 App]

1. Download all four files and replace [Workstation.bgi] with your custom .bgi file.
2. Wrap files via IntuneWinAppUtil.
  * Source Folder: Folder path containing all four files. 
  * Source File: BGInfo64.exe
  
Install command: ```powershell -ex bypass -file install.ps1```

Uninstall command: ```powershell -ex bypass -file uninstall.ps1``` 

Detection rules:
  File Path: C:\Program Files\BGInfo
  File: [Workstations.bgi]
  
