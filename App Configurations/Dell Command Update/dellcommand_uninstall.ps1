<#
.SYNOPSIS
    Uninstalls Dell Command Update
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 10.05.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://github.com/FlorianSLZ/scloud/tree/main/Program%20-%20win32/Dell%20Command%20Update
    https://scloud.work/en/dell-driver-intune/
#>

# Uninstall Dell Command Update
$uninstall = Start-Process -FilePath "C:\MDM\Dell-Command-Update-Application_8D5MC_WIN_4.3.0_A00_02.EXE" -ArgumentList "/passthrough /x /s /v""/qn""" -Wait
if ($uninstall.ExitCode -eq 0) {
    Write-Host "Dell Command Update uninstalled successfully"
} else {
    Write-Host "Dell Command Update uninstall failed"
}