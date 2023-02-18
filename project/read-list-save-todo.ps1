<#
.SYNOPSIS
    
.CHATGPT-QUERY

    combine the above code into one in which the script list the data from the json in the format [1] item1, [2] item-2 and prompt the user to save the entry-date, topic and status	

.DESCRIPTION
    
    This PowerShell script  to list the tasks from the tasks array in the format [index] item and then prompt the user to save a new task with an entry date, topic, and status:
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

$jsonString = Get-Content -Raw -Path "data.json"
$todoObject = $jsonString | ConvertFrom-Json
$tasksArray = $todoObject.todo.tasks

# List the tasks in the format [index] item
for ($i = 0; $i -lt $tasksArray.Count; $i++) {
    Write-Host "[$($i + 1)] $($tasksArray[$i].Topic)"
}

# Prompt the user to save a new task
$entryDate = Get-Date -Format "yyyy-MM-dd"
$topic = Read-Host "Enter the topic of the task"
$status


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
