

Setting up Microsoft Win32 Content Prep Tool.

1. Download the [Microsoft Win32 Content Prep Tool](https://go.microsoft.com/fwlink/?linkid=2065730)
2. Create a folder where all Intune wrapping will take place. I choose <b>C:\IntuneWinAppUtil</b>
3. In this folder, place the <b>IntuneWinAppUtil.exe</b> inside, and also create the folders <b>Source</b> and <b>Output</b> 
* The Source folder will host your current project folders that hold your .exe(s) and scripts. 
* The Output folder will contain the .intunewin file to upload to Microsoft Endpoint Manager
4. You could always navigate to C:\IntuneWinAppUtil to access IntuneWinAppUtil.exe, or, create a script that will open the .exe from any location on the desktop.
5. Open PowerShell ISE and enter in the following: 
* ```Set-Location C:\IntuneWinAppUtil```
* ```.\IntuneWinAppUtil.exe```
6. Save this script to your Desktop or elsewhere that is quickly accessible. 
7. When ready, right click on your script and select, <b>Run with Powershell</b>.

