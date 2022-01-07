<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.21.21
    Type: Public
    Source: 
    Description: Unistall Google Chrome without restart.
    =============================================================================
#>

#Removes Google Chrome by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{8093212B-7D0A-353D-8E41-3094713E73C5} /qn /norestart" -Wait