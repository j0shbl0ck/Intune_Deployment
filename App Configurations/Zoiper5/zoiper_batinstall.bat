:: Version 1.0.1
    :: This batch file runs zoipher.exe silently onto user computer.
:: =================================

@echo off

:: Redirects CMD to where Zoiper exe is located
cd C:\MDM\Zoiper\

:: Installs Zoiper exe silently.
start Zoiper5_Installer_v5.5.9.exe --mode unattended --unattendedmodeui none --zoiper_alluser_installation 1