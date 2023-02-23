<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    display the dictionary form json file 'saved_hashes.json' in a nice format
    
.RESPONSE
    To display the contents of a dictionary from a JSON file in a nice format, you can use the ConvertFrom-Json cmdlet in PowerShell. Here's an example:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


# Read the JSON file into a string
$jsonString = Get-Content -Path saved_hashes.json -Raw

# Convert the JSON string to a PowerShell object
$hashes = ConvertFrom-Json -InputObject $jsonString

# Output the contents of the hashtable in a nice format
foreach ($key in $hashes.Keys) {
    Write-Host "$key: $($hashes[$key])"
}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, we read the contents of the saved_hashes.json file into a string using the Get-Content cmdlet. We then use the ConvertFrom-Json cmdlet to convert the JSON string to a PowerShell object. The resulting object is a hashtable that we can loop through to output the contents in a nice format. In this case, we're simply outputting each key-value pair on a separate line, but you can modify the output to suit your needs.

.LINK
   -> https://chat.openai.com/chat/

#>
