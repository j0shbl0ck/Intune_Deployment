<#
.SYNOPSIS
    Unistall Advanced IP Scanner without restart.
.NOTES
    Author: Josh Block
    Date: 07.11.22
    Type: Public
    Version: 1.0.0
.LINK
    https://github.com/j0shbl0ck
#>

#Removes Google Chrome by product code.
Start-Process 'C:\Windows\System32\msiexec.exe' "/X{816038FA-53B2-4F36-A9F2-8F6B8B81C7B0} /qn /norestart" -Wait