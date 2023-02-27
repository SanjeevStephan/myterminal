<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
check if the notepad.exe process is running wait for it to close then continue to execute the rest of the code until then pause the code in powershell
    
.RESPONSE
You can use the following PowerShell code to check if the "notepad.exe" process is running and wait for it to close before continuing to execute the rest of the code:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


while (Get-Process "notepad" -ErrorAction SilentlyContinue) {
   Write-Host "Waiting for notepad to close..."
   Start-Sleep -Seconds 1
}

Write-Host "Notepad is closed, continuing with the rest of the code."
# Place the rest of your code here


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

The above code will enter a loop and check if the "notepad" process is running using the Get-Process cmdlet. The -ErrorAction SilentlyContinue parameter will suppress any errors if the process is not found.

If the process is running, the loop will continue to execute and display a message to the console stating that it is waiting for the process to close. The Start-Sleep cmdlet is used to pause the loop for one second before checking the process again.

Once the process is no longer running, the loop will exit and the message "Notepad is closed, continuing with the rest of the code." will be displayed to the console. You can then add the remaining code that you want to execute after the process has closed.
.LINK
   -> https://chat.openai.com/chat/

#>
