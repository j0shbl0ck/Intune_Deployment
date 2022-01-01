<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.2
    Date: 12.21.21
    Type: Public
    Source: https://blog.get-ready.net/2019/01/23/microsoft-intune-how-to-configure-sonicwall-netextender-vpn-client/
    Description: This script contains the custom profile needed for SonicWall VPN.
    =============================================================================
    .README
    This runs the profile setup for NetExtender.
    Please remove carrot symbols and quotes when filling in the variable. i.e $VPNSERVER = 1.1.1.1
#>


Set-Location "C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender"
$VPNServer = "<enter VPN Server IP Address>"
$VPNDomainName = "<enter domain>"
##$VPNPassword = <insert password> #if you want to provision the password
## uncomment the next line if you want the VPN username equal to the computer name
#$account = $env:computername
## uncomment the next line if you want the VPN username equal to the UPN of the logged user
#$account = whoami /upn

.\NECLI.exe addprofile -s $VPNServer -d $VPNDomainName
#.\NECLI.exe addprofile -s $VPNServer -u $account -p $VPNPassword -d $VPNDomainName

# Removes new NetExtender folder path.
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat" -Recurse -Force -Confirm:$false
Remove-Item -Path "C:\MDM\SonicWallNetExtender" -Recurse -Force -Confirm:$false

