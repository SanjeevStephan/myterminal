<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>
# 2. In this main PowerShell script file,we'll use the dot sourcing operator (.) followed by the path to the vars.ps1 file 
# to load the variables into your current session. For example:

$filename = "./98-powerShell-include-variables-from-this-file-01.ps1"
. $filename

Write-Host "The value of var1 is: $var1"
Write-Host "The value of var2 is: $var2"


 
<#-------------------------------{ CODE_ABOVE }-----------------------------
.OUTPUTS
The value of var1 is: Hello
The value of var2 is: World

.HOW_THE_SCRIPT_WORK
In this example, the first line loads the variables from the vars.ps1 file using dot sourcing. The second and third lines then output the values of $var1 and $var2 to the console using the Write-Host cmdlet.

When you run the main PowerShell script file, it will load the variables from vars.ps1 and then use them in the script. Note that you need to specify the full path to the vars.ps1 file or a relative path from the current directory.

.LINK
   -> https://chat.openai.com/chat/

#>
