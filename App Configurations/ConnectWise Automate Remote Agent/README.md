[MSI App]

Provided documentation on how to install ConnectWise Automate Remote Agent for specified client.  
1. To collect Command-line arguments, first download the custom msi agent for the provided client. 
2. Recommended to run on test device, run the .msi version of the agent to take note of the SERVERPASS and LOCATION.

**INTUNE APPLICATION SETUP**
----------------------------
Program setup:
- Command-line arguments: ```/quiet /norestart SERVERADDRESS=https://<company>.hostedrmm.com SERVERPASS=<enter server pass> LOCATION=<enter location #>``` 
- Example: ```/quiet /norestart SERVERADDRESS=https://contoso.hostedrmm.com SERVERPASS=X10X10X10X10 LOCATION=2``` 