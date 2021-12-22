[Win32]

1. Properly wrap SonicWall Extender folder with Source folder being the folder path containing all files, and the setup file being "install.ps1". 

Install Command: powershell -ex bypass -file install.ps1
Uninstall Command: powershell -ex bypass -file uninstall.ps1

Dectection Fules:
  File Path: C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender\
  File: NEGui.exe
