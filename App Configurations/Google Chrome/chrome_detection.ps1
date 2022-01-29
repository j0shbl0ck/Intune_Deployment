<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.1.9
    Date: 01.10.22
    Type: Public
    Source One: https://euc365.com/creating-intune-win32-apps/
    Source Two: https://techcommunity.microsoft.com/t5/microsoft-intune/intune-custom-detection-script/m-p/2976839
    Source Three: https://universecitiz3n.tech/intune/Intune-Win32-CustomScript/
    Source Four: https://social.technet.microsoft.com/Forums/en-US/c50de74f-4b68-4e90-ad19-0092aa5d61ac/how-to-set-exit-code-in-powershell-which-will-be-used-by-sccm?forum=configmanagergeneral 
    Description: Used as custom detection script because of Chrome being possibly installed in two locations
    =============================================================================
    .README
    Please resort to README.md for additional file setup. 
#>

# Checks File Explorer if Google Chrome is present on device
$pathone = "$env:ProgramFiles\Google\Chrome\Application\chrome.exe"
$pathtwo = "${env:ProgramFiles(x86}\Google\Chrome\Application\chrome.exe"

if ((Test-Path $pathone) -or (Test-Path $pathtwo)){
    $true
} else {}


<#
This code is currently working??

$pathone = "$env:ProgramFiles\Google\Chrome\Application\chrome.exe"

if ((Test-Path $pathone)){
    $true
}
else {

}
#>

