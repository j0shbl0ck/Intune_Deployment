<#
.SYNOPSIS
    This finds AnyDesk via wildcard search and returns the hostname of the device if found.
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 04.14.25
    Type: Public
.NOTES

.LINK

#>


# File path to Chrome 32bit location
$pathone = Test-path "C:\Program Files (x86)\AnyDesk*\AnyDesk*.exe"

# Get's host name of device
$hostname = hostname

if(("True" -eq $pathone))
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
