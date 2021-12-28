<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: --
    Type: Public
    Source: --
    Description: This fetches the product ID of applications for removing products via MSI if available. 
    =============================================================================
#>

get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

Pause
