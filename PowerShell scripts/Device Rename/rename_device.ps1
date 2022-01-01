<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.31.21
    Type: Public
    Source: https://social.technet.microsoft.com/wiki/contents/articles/2243.how-to-rename-computers-using-powershell-and-a-csv-file.aspx 
    Source: https://community.spiceworks.com/topic/1595731-powershell-rename-multiple-workstations
    Description: Using a custom .csv, this script renames the device to a new name. To properly understand the layout of the script, resort the .csv in this folder.
    =============================================================================
    .README
    It is possible to rename a device via Intune, but varying on Azure join type, it may not be. This script is wrapped as an Win32 App via IntuneWinAppUtil. It will contain
        three files, the "deploy_setup.ps1","rename_device.ps1", and "device_name_list.csv". Resort to the README.md on github for application deployment.  
#>

