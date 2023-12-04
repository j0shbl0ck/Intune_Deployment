<#
.SYNOPSIS
    This script creates a localadmin account on the device. Use .\ to login into system.
    Author: Josh Block
.NOTES
    Version: 1.0.9
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

param(
  [string] $Username = "username",
  [string] $Password = "password",
  [string] $FullName = "John Doe",
  [string] $Description = "Sample description",
  [string] $GroupName = "Administrators"
)

$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force

# Check if user already exists
$existingUser = Get-LocalUser -Name $Username -ErrorAction SilentlyContinue

if ($existingUser) {
  if (!(Get-LocalGroupMember -Group $GroupName -Member $Username)) {
    Add-LocalGroupMember -Group $GroupName -Member $Username
    Write-Host "User '$Username' already exists. Added to group '$GroupName' successfully."
    exit 0 # User found and added to group
  } else {
    Write-Host "User '$Username' already exists and is already a member of group '$GroupName'."
    exit 1 # User found and already in group
  }
} else {
  # Create new user if not found
  New-LocalUser -Name $Username -Password $SecurePassword -FullName $FullName -Description $Description
  Add-LocalGroupMember -Group $GroupName -Member $Username
  Write-Host "The new account '$Username' was created successfully."
  exit 0 # User created and added to group
}

exit 2 # Any unexpected error




