<#
.SYNOPSIS
    This script uninstalls Artic Wolf Agent, Sysmon, and Sysmon Assistant. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 08.2.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://docs.arcticwolf.com/agent/installing_windows.html
    https://docs.arcticwolf.com/agent/installing_sysmon.html
#>


# Removes Artic Wolf Agent by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{1583060B-8F37-44A8-AA2D-A259D55230C6} /qn /norestart" -Wait

# Removes Sysmon 32-bit by file.
#sysmon.exe -u

# Removes Sysmon 64-bit by file.
#sysmon64.exe -u

# Removes Sysmon Assistant by Product ID as well as the Sysmon service.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{102C4E54-A4D3-4481-80DB-9B50B2FB063F} /qn /norestart" -Wait