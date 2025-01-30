<#
.SYNOPSIS
    Checks if Google Chrome is installed.
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 1.30.25
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

# File path to Chrome 64bit location
$pathone = Test-path "C:\Program Files\Google\Chrome\Application\chrome.exe"

# File path to Chrome 32bit location
$pathtwo = Test-path "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

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
    # Exit with non-zero failure code
    Exit 1
}
