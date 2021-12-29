[Win 32 App]

Prior steps to extract the setup EXE:
<ol>
    <li>Go to https://www.dell.com/support/kbdoc/en-us/000177325/dell-command-update</li>
    <li>Open PowerShell as admin, and redirect to the Folder where the, Dell-Command-Update-Application_XXXXX_WIN_x.x.x_A00.EXE is.</li>
    <li>Run: <code>.\Dell-Command-Update-Windows-Universal-Application_XXXX_WIN_x.x.x_A00.EXE /s /e=C:\DELLCOMMAND\</code></li>
    <li>After extracting .exe (DellCommandUpdateApp_Setup.exe) begin Intune wrapping.</li>
</ol>

**Install Command**: ```DellCommandUpdateApp_Setup.exe /S /v/qn```

**Uninstall Command**: ```DellCommandUpdateApp_Setup.exe /S /x /v/qn```

Additional Notes: 
<ul>
    <li>As of now, currently unable to find proper uninstall file location.</li> 
    <li>Noticed Microsoft does have Dell Command Update on the <a href="https://www.microsoft.com/en-us/p/dell-command-update/9n0k4b9pjt60">Microsoft store</a>
        so this may be another method in adding the application to the device.</li>
</ul>



