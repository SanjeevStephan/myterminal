<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   powershell function to pass an text argument and return additional text with the argument 
    
.RESPONSE
   Sure, here's an example PowerShell function that takes a text argument and returns additional text with the argument:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   
To use this function, you can call it with a string argument for $Name like this:

[Outside-Script]
PS > .\102-PowerShell-pass-a-text-argument.ps1 -Name "SanjeevStephan"
Hello, SanjeevStephan! Welcome to PowerShell!

[Within-Script]
PS> Add-Greeting -Name "John"
Hello, John! Welcome to PowerShell!

This will output the greeting message "Hello, John! Welcome to PowerShell!" to the console.
 You can replace "John" with any other name to see the function return a personalized greeting with that name.
.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


#function Add-Greeting {
   param(
       [Parameter(Mandatory=$true)]
       [string]$Name
   )

   $greeting = "Hello, $Name! Welcome to PowerShell!"
   return $greeting
#}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this example, the Add-Greeting function takes a mandatory string parameter $Name. The function then uses string interpolation to create a new string $greeting that includes the value of $Name along with additional text.

Finally, the function returns the $greeting string using the return keyword.

.LINK
   -> https://chat.openai.com/chat/

#>
