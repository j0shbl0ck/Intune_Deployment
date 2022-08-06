<#
.SYNOPSIS
    This script detects if Artic Wolf is installed, with sysmon service running.
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 08.03.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

Clear-Host
# File path to AWA 32bit location
$pathone = Test-path "${env:ProgramFiles(x86)}\Arctic Wolf Networks\Agent\Win32ui.exe"

# Check if service "Sysmon" is running
$ServiceName64 = "Sysmon64"
$ServiceStatus64 = (Get-Service -Name $ServiceName64 -ErrorAction SilentlyContinue).status

$ServiceName32 = "Sysmon"
$ServiceStatus32 = (Get-Service -Name $ServiceName32 -ErrorAction SilentlyContinue).status 

# Get's host name of device
$hostname = hostname

if(("True" -eq $pathone) -and (($ServiceStatus64 -eq "Running") -or ($ServiceStatus32 -eq "Running")))
{
    # Write out a random variable (in this case, hostname) to output STDOUT
    $hostname
    Exit 0
}
else
{
    # Exit with non=zero failure code
    Exit 1
}