# Removes RDP session file from desktop. 
Remove-Item "$($env:USERPROFILE)\Desktop\QuoteWerks.rdp" -Force -Recurse