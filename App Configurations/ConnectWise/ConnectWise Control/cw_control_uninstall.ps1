<#
.SYNOPSIS
    This script removes the application, ConnectWise Control from the device.
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 05.25.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

#Removes ConnectWise Control by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{6E404102-A92A-4835-9D45-418CE3B5E54E} /qn /norestart" -Wait