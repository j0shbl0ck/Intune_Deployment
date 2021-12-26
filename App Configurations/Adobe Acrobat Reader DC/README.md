[Win32 App]

1. Download the latest version of Adobe Acrobat Reader DC: https://get.adobe.com/reader/
2. Wrap the file via IntuneWinAppUtil

Install Commmand: ```AcroRdrDC2100720099_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES```

Uninstall Command: msiexec /x “{AC76BA86-7AD7-1033-7B44-AC0F074E4100}” /q

Detection Rules:
  Path Location: C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\
  File Existence: AcroRd32.exe
