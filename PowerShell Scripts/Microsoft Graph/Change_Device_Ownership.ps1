<#
.SYNOPSIS
    This script pulls from Microsoft Graph to change device ownership in Intune
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.2
    Date: 03.30.22
    Type: Public
.NOTES
    You must have the Microsoft Graph SDK installed to use this script. You install by running: Install-Module Microsoft.Graph.Identity.DirectoryManagement
.LINK
    Source: https://social.technet.microsoft.com/Forums/en-US/78f09120-5acf-4a0d-bb8d-fb9ed3973b00/intune-azure-portal-set-ownership-en-masse-via-powershell
    Source: https://www.petervanderwoude.nl/post/change-device-ownership-the-journey-through-log-files-wmi-and-powershell-of-configmgr-2012/
    Source: https://www.tftd.co.uk/2021/07/23/managing-intune-with-powershell/
    Source: https://github.com/microsoftgraph/powershell-intune-samples/tree/master/ManagedDevices#1-invoke_deviceaction_setps1
    Source: https://docs.microsoft.com/en-us/graph/api/device-update?view=graph-rest-1.0&tabs=powershell
    Source: https://helloitsliam.com/2021/10/07/understanding-the-microsoft-graph-powershell/
#>

Import-Module Microsoft.Graph.Identity.DirectoryManagement

Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All","GroupMember.ReadWrite.All","DeviceManagementManagedDevices.ReadWrite.All", "Device.Read.All"

# Get the device ID from the Intune Device ID
$deviceId = '12345678-1234-1234-1234-123456789012'

# Change the device ownership: unknown, personal, company
$params = @{
	managedDeviceOwnerType = 'company'
}

# Invoke the device action
Update-MgDevice -DeviceId $deviceId -BodyParameter $params




