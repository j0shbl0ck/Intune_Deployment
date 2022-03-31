<#
.SYNOPSIS
    This script pulls from Microsoft Graph to change device ownership in Intune
.DESCRIPTION
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 03.30.22
    Type: Public
.NOTES
    1. You must have the Microsoft Graph SDK installed to use this script. You install by running: Install-Module Microsoft.Graph.Identity.DirectoryManagement
    2. Go to https://developer.microsoft.com/en-us/graph/graph-explorer and sign in with your Microsoft account.
    3. Choose GET https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies
    4. Find the deviceCompliancePolicyId for the device you want to change ownership for.

.LINK
    Source: https://social.technet.microsoft.com/Forums/en-US/78f09120-5acf-4a0d-bb8d-fb9ed3973b00/intune-azure-portal-set-ownership-en-masse-via-powershell
    Source: https://www.petervanderwoude.nl/post/change-device-ownership-the-journey-through-log-files-wmi-and-powershell-of-configmgr-2012/
    Source: https://www.tftd.co.uk/2021/07/23/managing-intune-with-powershell/
    Source: https://github.com/microsoftgraph/powershell-intune-samples/tree/master/ManagedDevices#1-invoke_deviceaction_setps1
    Source: https://docs.microsoft.com/en-us/graph/api/device-update?view=graph-rest-1.0&tabs=powershell
    Source: https://helloitsliam.com/2021/10/07/understanding-the-microsoft-graph-powershell/
    Source: https://stackoverflow.com/questions/52285308/can-i-change-the-azure-work-place-join-device-status-to-compliance-using-graph-a
#>

Import-Module Microsoft.Graph.Identity.DirectoryManagement

## Get Device Compliance Policy ID
GET https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies

## Get Device Compliance Device Status ID
GET https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatuses

## Update Compliance State
PATCH /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatuses/{deviceComplianceDeviceStatusId}

https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies/5f8b326f-c086-401f-b0cc-139befd1ac27/deviceStatuses
https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatuses



https://graph.microsoft.com/v1.0/deviceManagement/deviceCompliancePolicies/5f8b326f-c086-401f-b0cc-139befd1ac27/managedDevices/cabb30dd-6d54-40aa-83c3-ed467fe92458
https://graph.microsoft.com/v1.0/deviceManagement/managedDevices/cabb30dd-6d54-40aa-83c3-ed467fe92458

PATCH /deviceManagement/deviceCompliancePolicies/5f8b326f-c086-401f-b0cc-139befd1ac27/deviceStatuses/{deviceComplianceDeviceStatusId}


?$filter=deviceDisplayName eq 'AH--00022803AH'&$count=true

?$search="deviceDisplayName:AH--00022803AH"&$count=true
Connect-MgGraph -Scopes `
        "User.ReadWrite.All", `
        "Group.ReadWrite.All", `
        "GroupMember.ReadWrite.All", `
        "DeviceManagementManagedDevices.ReadWrite.All"
        "DeviceManagementConfiguration.Read.All"
        "DeviceManagementConfiguration.ReadWrite.All"

# Get the device ID from the Intune Device ID
$deviceId = '12345678-1234-1234-1234-123456789012'

# Change the device ownership: unknown, personal, company
$params = @{
	managedDeviceOwnerType = 'company'
}

# Invoke the device action
Update-MgDevice -DeviceId $deviceId -BodyParameter $params

# Disconnect from Microsoft Graph
Disconnect-MgGraph




