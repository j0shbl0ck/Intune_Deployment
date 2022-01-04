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

## Uses the headers OldName and NewName to differentiate what to rename PC to.

$callcsv = import-csv -Path "C:\MDM\DeviceRename\device_name_list.csv" 

foreach ($OldName in $callcsv)
{
    Rename-Computer -ComputerName $callcsv.OldName -NewName $callcsv.NewName
    restart-computer $callcsv.OldName
}

<#

# Script to rename computers in a domain by parsing a CSV file 
# Assumes: File of names with a header row of OldName,NewName
# and a row for oldname,newname pairs for each computer to be renamed.
# Adjust filename and file path as appropriate. 
  
$csvfile = "C:\Users\IntuneTest\Desktop\Device_Rename\device_name_list.csv"
Import-Csv $csvfile | foreach { 
$oldName = $_.oldname;
$newName = $_.newname;

Rename-Computer -ComputerName $oldName -NewName $newName #-DomainCredential Domain01\Admin01 -Force 

}




#>