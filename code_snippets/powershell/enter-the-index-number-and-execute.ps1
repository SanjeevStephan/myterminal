<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   add to the list (Add, List, Delete, Exit) in powershell and list the items in the format [1] Add, [2] List ..so on .finally ask the user to enter the index number and execute "you have selected $list-item 
    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is a PowerShell script that implements the functionality mention in the query:
-------------------------------{ CODE_BELOW }-----------------------------#>


$list = "Add", "List", "Delete", "Exit"

for ($i = 0; $i -lt $list.Count; $i++) {
    Write-Host ("[{0}] {1}" -f ($i + 1), $list[$i])
}

do {
    $selection = Read-Host "Enter the index number of the action you want to perform"
} while ($selection -notmatch '^\d+$' -or [int]$selection -lt 1 -or [int]$selection -gt $list.Count)

$action = $list[[int]$selection - 1]
Write-Host "You have selected $action"


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

The script starts by defining an array of four strings representing the available actions. It then loops through the array, displaying each item in the format [index] action using the Write-Host cmdlet and string formatting.

The script then enters a do loop that prompts the user to enter the index number of the action they want to perform using the Read-Host cmdlet. The do loop continues to prompt the user until they enter a valid integer index within the range of the list.

Finally, the script uses the selected index to retrieve the corresponding action from the list, and displays a message indicating the selected action using the Write-Host cmdlet and string concatenation.

.LINK
   -> https://chat.openai.com/chat/

#>
