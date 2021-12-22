[Win32]

1. Download client specific SophosSetup.exe
2. Wrap file via IntuneWinAppUtil

Install command: SophosSetup.exe --products=antivirus,intercept --quiet
Uninstall command: %ProgramFiles%\Sophos\Sophos Endpoint Agent\uninstallcli.exe

Detection rules:
	File Path: %ProgramFiles%\Sophos\Sophos UI
	File: SophosSetup.exe 
