<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   powershell script to countdown to ten on a single line without creating a new line and without repeating text
    
.RESPONSE
   Here's a PowerShell script that will countdown from 10 to 1 on a single line without creating a new line and without repeating text:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


for ($i = 10; $i -gt 0; $i--) {
   Write-Host -NoNewline "$i "
   Start-Sleep -Milliseconds 1000
}
Write-Host -NoNewline "1"


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This script uses a for loop to iterate from 10 down to 1.
Inside the loop, the Write-Host cmdlet is used to output the value of $i without adding a new line (-NoNewline flag) and with a space at the end.
After writing the value, the script waits for one second using the Start-Sleep cmdlet to create the countdown effect.
Finally, outside the loop, the script outputs the value 1 without a new line.

.LINK
   -> https://chat.openai.com/chat/

#>
