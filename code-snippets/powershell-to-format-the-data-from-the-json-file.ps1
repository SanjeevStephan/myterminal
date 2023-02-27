<#
.SYNOPSIS
    
    Using format-table to format the data from the json file name "list_of_words.json" with the labels "vocabulary","meaning"

.DESCRIPTION
    
    This  PowerShell script that reads in data from a JSON file named "list_of_words.json" and formats it as a table with the labels "vocabulary" and "meaning. 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Read in the data from the JSON file
$json = Get-Content "106-list-of-sample-words.json" | ConvertFrom-Json

# Format the data as a table with labels "vocabulary" and "meaning"
$table = $json | Format-Table -Property @{label="vocabulary";expression={$_.word}},@{label="meaning";expression={$_.definition}}

# Display the table in the PowerShell console
$table


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

In this script, the Get-Content cmdlet is used to read in the data from the "list_of_words.json" file and the ConvertFrom-Json cmdlet is used to convert the JSON-formatted data into a PowerShell object. The Format-Table cmdlet is used to format the object as a table with the specified labels for the "word" and "definition" properties. Finally, the table is displayed in the PowerShell console. You can modify the script to include your own file path/name and label names.


#>
