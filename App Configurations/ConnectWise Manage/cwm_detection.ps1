<#
.SYNOPSIS
    This script detects if ConnectWise Manage is running/installed.
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 06.04.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

# File path to CWM 64bit location
$pathone = Test-path "${env:ProgramFiles}\ConnectWise\PSA.net\ConnectWiseManage.exe"

# File path to CWM 32bit location
$pathtwo = Test-path "${env:ProgramFiles(x86)}\ConnectWise\PSA.net\ConnectWiseManage.exe"

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