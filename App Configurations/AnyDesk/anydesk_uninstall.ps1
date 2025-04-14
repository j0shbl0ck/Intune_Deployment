
<#
.SYNOPSIS
    This finds AnyDesk on the system and uninstalls it using the product code.
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 04.14.25
    Type: Public
.NOTES

.LINK

#>


# Gets the product code for AnyDesk.
$identnumb = (Get-CimInstance -Class Win32_Product | Where-Object { $_.Name -like "*AnyDesk*" }).IdentifyingNumber

#Removes Google Chrome by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X${identnumb} /qn /norestart" -Wait