<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
	powershell code to display only the filename and not the 
        'Mode', 'LastWriteTime', 'Length' which display when i run 'dir' command

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here's the PowerShell code to accomplish this:
-------------------------------{ CODE_BELOW }-----------------------------#>


Get-ChildItem | Select-Object Name


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

You can use the Get-ChildItem cmdlet in PowerShell to list the files in a directory and
 then use the Select-Object cmdlet to only display the Name property of the files.


.LINK
   -> https://chat.openai.com/chat/

#>
