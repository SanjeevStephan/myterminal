<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   include variables from this file 
    
.RESPONSE
   To include variables from another file in a PowerShell script, you can use the dot sourcing feature of PowerShell.
    This allows you to load variables, functions, and other resources from a separate PowerShell script into your current session.

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here's an example of how to use dot sourcing to load variables from another file:

-------------------------------{ CODE_BELOW }-----------------------------#>
# 1.Create a PowerShell script file that contains the variables you want to load, let's say vars.ps1. 
# For example:
$var1 = "Hello"
$var2 = "World"


# 2.In your main PowerShell script file, use the dot sourcing operator (.) followed by the path 
# to the vars.ps1 file to load the variables into your current session.
<# For example:

. "C:\Path\To\vars.ps1"

Write-Host "The value of var1 is: $var1"
Write-Host "The value of var2 is: $var2"


#>


<#-------------------------------{ CODE_ABOVE }-----------------------------


.OUTPUT 


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

#>
