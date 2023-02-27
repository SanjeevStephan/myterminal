<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    powershell switch example 
    
.RESPONSE
    In PowerShell, the switch statement is used to evaluate a value against a set of possible conditions and execute a block of code based on which condition matches the value. 

.SYNTAX
   

.DESCRIPTION
 

.NOTE
 Note that you can have multiple conditions in a single switch statement, and each condition can have its own block of code to execute. You can also use the break keyword to exit the switch statement after a condition is matched.

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


$fruit = "apple"

switch ($fruit) {
    "apple" {
        Write-Host "You selected an apple"
    }
    "banana" {
        Write-Host "You selected a banana"
    }
    "orange" {
        Write-Host "You selected an orange"
    }
    Default {
        Write-Host "You selected a fruit that is not on the list"
    }
}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, we define a variable $fruit that contains the value "apple". We then use the switch statement to evaluate the value of $fruit against a set of possible conditions. If the value of $fruit matches one of the conditions (in this case, "apple"), the block of code corresponding to that condition is executed (in this case, we output the message "You selected an apple"). If the value of $fruit does not match any of the conditions, the Default block of code is executed (in this case, we output the message "You selected a fruit that is not on the list").

.LINK
   -> https://chat.openai.com/chat/

#>
