<#
.SYNOPSIS
    This script creates a localadmin account on the device. Use .\ to login into system.
    Author: Josh Block
.NOTES
    Version: 1.0.6
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

if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # If not elevated, display an error message and exit the script after a 10-second delay
    Write-Error "This script must be run as an administrator."
    Start-Sleep -Seconds 10
    Exit
}

#At this point, the script is running in an elevated PowerShell session
Clear-Host

$ExpectedLocalUser = Read-Host "Enter the desired local username"
$Password = Read-Host "Enter the password"
$Password2 = Read-Host "Enter the password again"

if ($Password -eq $Password2) {
    $SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force
    
    Function Create_LocalAdmin
    {
        $FullName = Read-Host "Enter the user's full name"
        New-LocalUser $ExpectedLocalUser -Password $SecurePassword -FullName $FullName -Description "Local Administrator account."
        Add-LocalGroupMember -Group "Administrators" -Member $ExpectedLocalUser
        Set-LocalUser -Name $ExpectedLocalUser -PasswordNeverExpires:$true
    }

    Try
    {
        Write-Host "User $ExpectedLocalUser already exists. Updating password..."
        ## If an account is found update the password
        Set-LocalUser -Name $ExpectedLocalUser -Password $SecurePassword -PasswordNeverExpires:$true
    }
    Catch
    {
        Write-Host "User $ExpectedLocalUser does not exist. Creating account..."
        Create_LocalAdmin
    }
}
else {
    Write-Error "Passwords do not match. Please try again."
    Start-Sleep -Seconds 5
    Exit
}



