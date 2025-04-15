<#
.SYNOPSIS
    This finds AnyDesk via wildcard search and returns the hostname of the device if found.
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 04.14.25
    Type: Public
.NOTES

.LINK

#>

# Checks File Explorer if ANyDesk is present on device 
$installed = (Get-ChildItem "C:\Program Files (x86)\AnyDesk*\AnyDesk*.exe")
# Checks version and if low enough, installs newer version of AnyDesk.  
$version = (Get-WmiObject Win32_Product | Where-Object { $_.Name -like "*AnyDesk*" }).Version

# Get's host name of device
$hostname = hostname

# Check if AnyDesk is installed and version is greater than to 7.0.15
if ($installed -and $version -gt "7.0.15")
{
    # Write out a random variable (in this case hostname) to output STDOUT
    $hostname
    Exit 0
}
else
{
    # Exit with non-zero failure code
    Write-Host "AnyDesk not found or version is too low."
    Exit 1
}
