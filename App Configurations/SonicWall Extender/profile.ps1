<#

Author: Josh Block (jblock@trustinfinitech.com)
Date: 12.21.21
Type: Public
Source: 
Description: This script contains the custom profile needed for SonicWall VPN.

#>

#This runs the profile setup for NetExtender.
cd "C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender"
$VPNServer = "<enter VPN Server IP Address>"
$VPNDomainName = "<enter domain>"
##$VPNPassword = «  » #if you want to provision the password
## uncomment the next line if you want the VPN username equal to the computer name
#$account = $env:computername
## uncomment the next line if you want the VPN username equal to the UPN of the logged user
#$account = whoami /upn
.\NECLI.exe addprofile -s $VPNServer -d $VPNDomainName

#Removes new NetExtender folder path.
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Create_Profile.bat" -Recurse -Force -Confirm:$false
Remove-Item -Path "C:\MDM\SonicWallNetExtender" -Recurse -Force -Confirm:$false

