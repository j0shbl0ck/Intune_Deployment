<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.5
    Date: 12.31.21
    Type: Public
    Source: https://social.technet.microsoft.com/wiki/contents/articles/2243.how-to-rename-computers-using-powershell-and-a-csv-file.aspx 
    Source: https://community.spiceworks.com/topic/1595731-powershell-rename-multiple-workstations
    Source: https://www.reddit.com/r/PowerShell/comments/he29va/renaming_computers_with_csv_file/
    Description: This copies over "rename_device.ps1" and "device_name_list.csv" into specified folder on device.
    =============================================================================
    .README
    It is possible to rename a device via Intune, but varying on Azure join type, it may not be. This script is wrapped as an Win32 App via IntuneWinAppUtil. It will contain
        four files, the "deploy_setup.ps1","rename_device.ps1","device_name_list.csv", and "remove_files.bat". Resort to the README.md on github for application deployment.  
    =============================================================================
#>

#Creates new folder "Createlnk"
New-Item -ItemType Directory –Force –Path "C:\MDM\DeviceRename" | Out-Null

#Copies "rename_device" to DeviceRename folder
Copy-Item -Path "$PSScriptRoot\rename_device.ps1" –Destination "C:\MDM\DeviceRename\rename_device.ps1" 

#Copies "rename_device" to DeviceRename folder
Copy-Item -Path "$PSScriptRoot\device_name_list.csv" –Destination "C:\MDM\DeviceRename\device_name_list.csv" 

#Copies "remove_files.bat" to Startup folder within C: folder.
Copy-Item -Path "$PSScriptRoot\remove_files.bat" –Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\remove_files.bat"

#Copies "run_script.bat" to Startup folder within C: folder.
Copy-Item -Path "$PSScriptRoot\run_script.bat" –Destination "C:\MDM\DeviceRename\run_script.bat"

Copy-Item -Path 

## Once all three files are copied, then the script will execute the "rename_device.ps1"

# Runs batch file to then run "rename_device.ps1"
#Start-Process -window Minimized "C:\MDM\DeviceRename\run_script.bat" 

