# **APPLICATION TROUBLESHOOOTING**
### This folder contains troubleshooting scripts and applications to better assist an admin in removing applications from a device. Applications and scripts are <b>AS IS</b> and provide no libaility to a device

[**Find_Product_Code.ps1**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/Find_Product_Code.ps1) 🔽

This finds the product code of the software to perform "msiexec" functions in PowerShell. Note, you may not always be able to find your software.

[**MCPR.exe**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/MCPR.exe) 🔽

This uninstalls all McAfee bloatware on a device. 

[**MicrosoftProgram_Install_and_Uninstall**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/MicrosoftProgram_Install_and_Uninstall.meta.diagcab) 🔽

This troubleshooter is found [here](https://support.microsoft.com/en-us/topic/fix-problems-that-block-programs-from-being-installed-or-removed-cca7d1b6-65a9-3d98-426b-e9f927e1eb4d). It is used to help repair issues with installing and uninstalling software.

[**SentinelCleaner_4.3.44_x64.exe**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/SentinelCleaner_4.3.44_x64.exe) 🔽

These steps explain how to run the sentinel cleaner from safe mode only.
As this tool is able to remove the SentinelOne agent, please make sure to delete it from the machine once used and make sure that it doesn't reach unwanted hands 😝

This tool should not be used without explicit instructions from the support team.
To use the utility:
1.  Reboot the machine into Safe Mode ( MANDATORY )
2.  Run the cleaner in Safe Mode ( MANDATORY ) from C drive ( Same folder you have extracted the file )
3.  Verify that the utility successfully removed the agent files, folders, and registry keys.

To verify:
1.  Run regedit.
2.  Verify that all the 'sentinel' registry keys are removed. Search for the string 'sentinel'.
		If there, remove the outstanding keys manually.
		Note: If the deletion is not possible, change the ownership of those registry keys to the current admin.
		Read more about how to do it here.
3.  Verify that the "Sentinel” Program folder, its sub-directories, and the hidden Sentinel ProgramData folder are removed.
		Reminder: To see the hidden ProgramData folders, change the folder view options to show hidden items.
		When the system reboots twice, it is ready for a fresh agent installation.
4.  Delete the tool

[**SetupProd_OffScrub.exe**](https://github.com/j0shbl0ck/Intune_Deployment/blob/master/Application%20Troubleshooting/SetupProd_OffScrub.exe) 🔽

This assists in troubleshooting Microsoft-related products.
