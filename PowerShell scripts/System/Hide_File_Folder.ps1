<#
    .NOTES
    =============================================================================
    Author: j0shbl0ck https://github.com/j0shbl0ck
    Version: 1.0.1
    Date: 12.21.21
    Type: Public
    Source: https://www.majorgeeks.com/content/page/how_to_hide_files_or_folders_using_command_prompt_or_powershell.html
    Description: This script is made to hide folders and files from end user even with "view hidden folders on."
    =============================================================================
    .ADDITIONAL NOTES
        Find out folder/file path location prior to listing file paths.
    =============================================================================
    .EXAMPLE
    attrib +s +h "C:\Users\Public\Desktop\Google Chrome.lnk" | To Hide
    attrib -s -h "C:\Users\Public\Desktop\Google Chrome.lnk" | To Unhide
#>

attrib +s +h "C:\Users\Public\Desktop\Google Chrome.lnk"
attrib +s +h "C:\Users\Public\Desktop\Test_Folder"


