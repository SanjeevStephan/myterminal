<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script shows how to use Format-Table to format the tasks array from the todo object with the headings "Date", "Topic", and "Status": 
    
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

$tasksArray | Format-Table -Property EntryDate, Topic, Status -AutoSize -Wrap # -HideTableHeaders

<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

This code reads the tasks array from the todo object in the JSON file, and then pipes it to the Format-Table cmdlet. The EntryDate, Topic, and Status properties are specified using the -Property parameter, and the -AutoSize parameter is used to automatically adjust the width of the columns to fit the data. The -Wrap parameter is used to wrap text in cells if it exceeds the width of the column. Finally, the -HideTableHeaders parameter is used to hide the default table headers and display only the specified column data.


#>
