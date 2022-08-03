<#
.SYNOPSIS
    This script checks if ConnectWise Control was installed on the device.
    Author: Josh Block
.NOTES
    Version: 1.0.1
    Date: 05.25.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://docs.microsoft.com/en-us/mem/intune/apps/apps-win32-troubleshoot#detecting-the-win32-app-file-version-by-using-powershell
#>

# File path to CWC 64bit location
$pathone = Test-path "${env:ProgramFiles}\ScreenConnect Client*"

# File path to CWV 32bit location
$pathtwo = Test-path "${env:ProgramFiles(x86)}\ScreenConnect Client*"

# Get's host name of device
$hostname = hostname

if(("True" -eq $pathone) -or ("True" -eq $pathtwo))
{
    # Write out a random variable (in this case hostname) to output STDOUT
    $hostname
    Exit 0
}
else
{
    # Exit with non=zero failure code
    Exit 1
}
