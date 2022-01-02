<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.2
    Date: 01.02.22
    Type: Public
    Source: https://www.thelazyadministrator.com/2019/07/30/set-corporate-wallpaper-with-intune-for-non-windows-10-enterprise-or-windows-10-education-machines/
    Description: This captures an url image and displays it as the desktop wallpaper. All credit to "the Lazy Administrator"
    =============================================================================
    For Intune Purposes
    -------------------
    Run this script using the logged on credentials:
        - No

    Enforce script signature check:
        - No

    Run script in 64 bit PowerShell Host
        - Yes
    =============================================================================
#>

## For new PS scripters, leave the qoutes, but replace <text>.

$RegKeyPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP"


$DesktopPath = "DesktopImagePath"
$DesktopStatus = "DesktopImageStatus"
$DesktopUrl = "DesktopImageUrl"

$StatusValue = "1"

# place url link of image here. Ensure it has ".png" or ".jpg" at the end.
$url = "url of your choice"

# Decide where the image will be saved to the device.
$directory = "C:\MDM\"

#Decide the name of the image downloaded will be. 
$DesktopImageValue = "C:\MDM\wallpaper_admin.jpg"



If ((Test-Path -Path $directory) -eq $false)
{
	New-Item -Path $directory -ItemType directory
}

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $DesktopImageValue)



if (!(Test-Path $RegKeyPath))
{
	Write-Host "Creating registry path $($RegKeyPath)."
	New-Item -Path $RegKeyPath -Force | Out-Null
}


New-ItemProperty -Path $RegKeyPath -Name $DesktopStatus -Value $StatusValue -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path $RegKeyPath -Name $DesktopPath -Value $DesktopImageValue -PropertyType STRING -Force | Out-Null
New-ItemProperty -Path $RegKeyPath -Name $DesktopUrl -Value $DesktopImageValue -PropertyType STRING -Force | Out-Null

RUNDLL32.EXE USER32.DLL, UpdatePerUserSystemParameters 1, True