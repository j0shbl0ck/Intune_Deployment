<#
.SYNOPSIS
    This script creates a localadmin account on the device. Use .\ to login into system.
    Author: Josh Block
.NOTES
    Version: 1.0.7
    Date: 12.21.21
    Type: Public
    =============================================================================
    For Intune Purposes
    -------------------
    Run this script using the logged on credentials:
        - No

    Enforce script signature check:
        - No

    Run script in 64 bit PowerShell Host
        - Yes
    =============================================================================
.LINK
    https://github.com/j0shbl0ck
#>

## For new PS scripters, leave the qoutes, but replace <text>.
## Run this script in PowerShell ISE as admin to properly edit the script.

$username = "<text>"
$password = "<text>"

$SecurePassword = ConvertTo-SecureString $password -AsPlainText -Force

New-LocalUser -Name $username -Password $SecurePassword -FullName "<text>" -Description "<text>"
Add-LocalGroupMember -Group Administrators -Member $username

Write-Host "The new account was created successfully."



