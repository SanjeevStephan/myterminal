<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   read only the keys from vocabulary and display in a sorted format-table in powershell
    
.RESPONSE
   You can use PowerShell to read the keys from the "vocabulary" array and display them in a sorted format-table. 

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>

$json = '{
   "date_created": "20 Feb 2023",
   "email": "johndoe@example.com",
   "vocabulary": [
     {
         "word": "aberration",
         "definition": "a departure from what is normal, usual, or expected, typically one that is unwelcome"
     },
     {
         "word": "cacophony",
         "definition": "a harsh, discordant mixture of sounds"
     },
     {
         "word": "ephemeral",
         "definition": "lasting for a very short time"
     }
   ]
 }'
 
 $data = ConvertFrom-Json $json
 $keys = $data.vocabulary | ForEach-Object { $_.PSObject.Properties.Name }
 
 $keys | Sort-Object | Format-Table
 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this code, we first convert the JSON string to a PowerShell object using the ConvertFrom-Json cmdlet.
Then, we use the ForEach-Object cmdlet to iterate over each object in the "vocabulary" array and retrieve its property names using the PSObject.Properties.Name property.
 Finally, we sort the keys using the Sort-Object cmdlet and display them in a formatted table using the Format-Table cmdlet.

.LINK
   -> https://chat.openai.com/chat/

#>
