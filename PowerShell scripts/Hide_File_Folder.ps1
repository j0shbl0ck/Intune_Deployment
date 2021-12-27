<#
Author: J Block
Type: Public
Date: 12.21.21
Source: https://www.majorgeeks.com/content/page/how_to_hide_files_or_folders_using_command_prompt_or_powershell.html
Description: This script is made to hide folders and files from end user.
#>

## This hides folders and files even with "view hidden folders on"
# Find out folder/file path location prior to listing file path below.

attrib +s +h "C:\Users\Public\Desktop\Google Chrome.lnk"
attrib +s +h "C:\Users\Public\Desktop\Test_Folder"
attrib +s +h "C:\Users\Public\Desktop\Firefox.lnk"

## This unhides folders and files
# attrib -s -h C:\Users\Public\Desktop\Google Chrome.lnk"
