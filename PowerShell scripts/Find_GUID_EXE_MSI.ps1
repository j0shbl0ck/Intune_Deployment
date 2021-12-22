## This fetches the product ID of applications for removing products via MSI if available.

get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

Pause
