<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script that creates a todo object, allows the user to add new tasks to it, saves the todo object to a data.json file, and loads the todo object from the data.json file if it already exists: 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Create a 'todo' object with an empty array to hold tasks
$todo = [PSCustomObject]@{
    tasks = @()
}

# If the 'data.json' file exists, load the 'todo' object from it
if (Test-Path data.json) {
    $json = Get-Content data.json -Raw | ConvertFrom-Json
    $todo = $json.todo
}

# Display the current list of tasks
Write-Host "Current tasks:"
$todo.tasks

# Prompt the user to add a new task
$entryDate = Get-Date -Format "yyyy-MM-dd"
$topic = Read-Host "Enter the topic of the task"
$status = Read-Host "Enter the status of the task (e.g. incomplete, complete)"

# Add the new task to the 'tasks' array in the 'todo' object
$newTask = [PSCustomObject]@{
    EntryDate = $entryDate
    Topic = $topic
    Status = $status
}
$todo.tasks += $newTask

# Save the 'todo' object to the 'data.json' file
$json = [PSCustomObject]@{
    todo = $todo
}
$json | ConvertTo-Json -Depth 3 | Set-Content data.json


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

When you run this script, it will first check if the data.json file exists in the current directory. If it does, the script will load the todo object from the file. If it doesn't, the script will create a new todo object with an empty tasks array.

After loading the todo object, the script will display the current list of tasks and prompt the user to add a new task. Once the user enters the topic and status of the task, the script will create a new task object with the current date as the entry date, add it to the tasks array in the todo object, and save the todo object to the data.json file

#>
