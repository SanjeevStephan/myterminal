<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    powershell script to list only 'ps1' extension files in current directory
    
.RESPONSE
    Here's a PowerShell script to list only files with the ".ps1" extension in the current directory:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


Get-ChildItem -Path . -Filter *.ps1 | ForEach-Object { $_.Name }


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

Explanation:

The Get-ChildItem cmdlet is used to retrieve the list of files in the current directory (.).

The -Filter parameter is used to specify the file name pattern to match, in this case, *.ps1, which matches all files with the ".ps1" extension.

The ForEach-Object cmdlet is used to iterate through each item in the list of files returned by Get-ChildItem. For each file, the $_.Name property is retrieved and returned as the output. This way, only the names of the files with the ".ps1" extension are returned, and not other information such as size or creation date.


.LINK
   -> https://chat.openai.com/chat/

#>
