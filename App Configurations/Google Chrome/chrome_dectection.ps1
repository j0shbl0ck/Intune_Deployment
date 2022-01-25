<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.0
    Date: 01.10.22
    Type: Public
    Source One: https://euc365.com/creating-intune-win32-apps/
    Source Two: https://techcommunity.microsoft.com/t5/microsoft-intune/intune-custom-detection-script/m-p/2976839
    Description: Used as custom detection script because of Chrome being possibly installed in two locations
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>


# Checks File Explorer if Google Chrome is present on device
$pathone = (Get-ChildItem "C:\Program Files\Google\Chrome\Application\chrome.exe") 
$pathtwo = (Get-ChildItem "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

IF ((Test-Path $pathone) -or (Test-Path $pathtwo)) {
    $true
} else {}