<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   use format-table to format the data from the json file name "list_of_words.json" with the labels "vocabulary","meaning"
    
.RESPONSE
   Sure, here's an example PowerShell script that reads in data from a JSON file named "list_of_words.json" and formats it as a table with the labels "vocabulary" and "meaning":

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


# Read in the data from the JSON file
$json = Get-Content "sample_words_lists.json" | ConvertFrom-Json

# Format the data as a table with labels "vocabulary" and "meaning"
$table = $json | Format-Table -Property @{label="vocabulary";expression={$_.word}},@{label="meaning";expression={$_.definition}}

# Display the table in the PowerShell console
$table


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this script, the Get-Content cmdlet is used to read in the data from the "list_of_words.json" file and
 the ConvertFrom-Json cmdlet is used to convert the JSON-formatted data into a PowerShell object.
 The Format-Table cmdlet is used to format the object as a table with the specified labels for the "word" and "definition" properties. Finally, the table is displayed in the PowerShell console.
 You can modify the script to include your own file path/name and label names.

.LINK
   -> https://chat.openai.com/chat/

#>
