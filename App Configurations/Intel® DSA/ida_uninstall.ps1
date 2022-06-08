<#
.SYNOPSIS
    This script uinstalls Intel® Driver & Support Assistant onto the device. 
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 06.08.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

#Removes Intel® Driver & Support Assistant by product code.
msiexec /x "{19B7322D-268B-4D88-AA3E-938F36F9DCE9}" /q