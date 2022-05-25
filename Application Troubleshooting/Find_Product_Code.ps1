<#
.SYNOPSIS
    This fetches the product ID of applications for removing products via MSI if available. 
    Author: Josh Block
.NOTES
    Version: 1.0.2
    Date: 05.25.22
    Type: Public
.LINK
    https://github.com/j0shbl0ck
#>

get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

Pause
