<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
use this -> no_of_files_to_be_created = input("Enter the num of test-python-files to create (max:20) :")
    
.RESPONSE
Sure, here's the updated PowerShell code that prompts the user to enter the number of files to create, with a maximum limit of 20:

.SYNTAX
   

.DESCRIPTION
 

.NOTE
Note that if the user enters an invalid input in the $num_files_message prompt, the loop will continue until a valid input is entered.

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


$max_files = 20
$file_list = @()

do {
    $num_files_message = "Enter the num of test-python-files to create (max:$max_files): "
    $num_files = Read-Host -Prompt $num_files_message
} while ([int]$num_files -lt 1 -or [int]$num_files -gt $max_files -or $num_files -notmatch "^\d+$")

for ($i=1; $i -le $num_files; $i++) {
    $filename = "test-python-files-{0:00}.py" -f $i
    $file_list += $filename
}

Write-Output $file_list

$confirm_create_message = "[CREATE] Do you want to create these files in the current directory (y or n): "
$confirm_create = Read-Host -Prompt $confirm_create_message

if ($confirm_create -eq 'y') {
    foreach ($file in $file_list) {
        New-Item -ItemType File -Path $file
    }
    Write-Output "Files created successfully."
    
    $confirm_delete_message = "[DELETE] Do you want to delete these test files (y or n): "
    $confirm_delete = Read-Host -Prompt $confirm_delete_message
    
    if ($confirm_delete -eq 'y') {
        foreach ($file in $file_list) {
            Remove-Item -Path $file
        }
        Write-Output "Files deleted successfully."
    } else {
        Write-Output "Files not deleted."
    }
} else {
    Write-Output "Files creation cancelled."
}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this code, we first define a maximum number of files that can be created using the $max_files variable. We then use a do-while loop to prompt the user to enter the number of files to create using the $num_files_message variable.

The do-while loop ensures that the user enters a valid input that is between 1 and $max_files, and is a positive integer.

We then use the user's input to create the $file_list array using the same for loop and formatting method as before.

The rest of the code is the same as the previous version, prompting the user to confirm file creation and deletion, and deleting the files if confirmed by the user.


.LINK
   -> https://chat.openai.com/chat/

#>
