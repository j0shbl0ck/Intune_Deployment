<#
.SYNOPSIS
    This script uninstalls McAfee from Lenovo devices
    Author: Josh Block
.NOTES
    Version: 1.0.0
    Date: 08.01.23
    Type: Public
.LINK
    https://github.com/j0shbl0ck
    https://www.tbone.se/2021/03/05/mcafee-cleanup-with-intune/
#>

# Run the cleanup tool
$program= ".\McCleanup.exe"
$programArg= "-p StopServices,MFSY,PEF,MXD,CSP,Sustainability,MOCP,MFP,APPSTATS,Auth,EMproxy,FWdiver,HW,MAS,MAT,MBK,MCPR,McProxy,McSvcHost,VUL,MHN,MNA,MOBK,MPFP,MPFPCU,MPS,SHRED,MPSCU,MQC,MQCCU,MSAD,MSHR,MSK,MSKCU,MWL,NMC,RedirSvc,VS,REMEDIATION,MSC,YAP,TRUEKEY,LAM,PCB,Symlink,SafeConnect,MGS,WMIRemover,RESIDUE -v -s"
$process = Start-Process $program -ArgumentList $ProgramArg -passthru -Wait -NoNewWindow

# Remove the Store apps from McAfee
$RemoveApp = 'Mcafee'
Get-AppxPackage -AllUsers | Where-Object {$_.Name -Match $RemoveApp} | Remove-AppxPackage
Get-AppxPackage | Where-Object {$_.Name -Match $RemoveApp} | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -Match $RemoveApp} | Remove-AppxProvisionedPackage -Online