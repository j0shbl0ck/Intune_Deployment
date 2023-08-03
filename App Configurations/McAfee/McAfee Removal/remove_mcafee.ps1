<#
.SYNOPSIS
    This script uninstalls McAfee from Lenovo devices
    Author: Josh Block
.NOTES
    Version: 1.0.2
    Date: 08.01.23
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://www.tbone.se/2021/03/05/mcafee-cleanup-with-intune/
#>

# Creates new folder on C: Drive to host setup files
New-Item -ItemType Directory -Force -Path "C:\temp\MDM\McAfeeRemover" | Out-Null

# Copies MCPR to newly created folder
Copy-Item -Path "$PSScriptRoot\MCPR" -Destination "C:\temp\MDM\McAfeeRemover"

#This uninstalls McAfee
$program= "C:\temp\MDM\McAfeeRemover\MCPR\mccleanup.exe"
$programArg= "-p StopServices,MFSY,PEF,MXD,CSP,Sustainability,MOCP,MFP,APPSTATS,Auth,EMproxy,FWdiver,HW,MAS,MAT,MBK,MCPR,McProxy,McSvcHost,VUL,MHN,MNA,MOBK,MPFP,MPFPCU,MPS,SHRED,MPSCU,MQC,MQCCU,MSAD,MSHR,MSK,MSKCU,MWL,NMC,RedirSvc,VS,REMEDIATION,MSC,YAP,TRUEKEY,LAM,PCB,Symlink,SafeConnect,MGS,WMIRemover,RESIDUE -v -s"
Start-Process $program -ArgumentList $ProgramArg -passthru -Wait -NoNewWindow

# Remove the Store apps from McAfee
$RemoveApp = 'Mcafee'
Get-AppxPackage -AllUsers | Where-Object {$_.Name -Match $RemoveApp} | Remove-AppxPackage
Get-AppxPackage | Where-Object {$_.Name -Match $RemoveApp} | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -Match $RemoveApp} | Remove-AppxProvisionedPackage -Online

# Wait for the uninstallation of McAfee to deploy. 
Start-Sleep -s 30

# Removes Advanced IP Scanner setup folder from main MDM folder. 
Remove-Item "C:\temp\MDM\McAfeeRemover\MCPR" -Force -Recurse -ErrorAction SilentlyContinue