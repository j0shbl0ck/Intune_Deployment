<#
.SYNOPSIS
    This script uninstalls ConnectWise Manage from the device. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 06.20.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

#Removes ConnectWise Manage Client (x86) by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{3EFDAA10-2268-485C-ACDD-5C6618C9B835} /qn /norestart" -Wait

#Removes ConnectWise Manage Client (64-bit) by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{B44EB175-A178-4EA8-916F-1381E79EF3C2} /qn /norestart" -Wait
