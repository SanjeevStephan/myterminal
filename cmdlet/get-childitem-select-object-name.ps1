<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
	powershell code to display only the filename an
        not the 'Mode', 'LastWriteTime', 'Length' which display when i run 'dir' command

    
.RESPONSE
	You can use the Get-ChildItem cmdlet in PowerShell to list the files in a directory and
        then use the Select-Object cmdlet to only display the Name property of the files.

.SYNTAX
   

.DESCRIPTION
 	This will display only the filename for each file in the current directory.

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


Get-ChildItem | Select-Object Name


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

#>
