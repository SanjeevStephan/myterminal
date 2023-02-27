<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script sort the json before saving it to the file 
    Sure, you can sort the properties of the JSON object before saving it to a file using the Sort-Object cmdlet in PowerShell.
    
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
 Here's an example script that sorts the JSON properties in alphabetical order before saving it to a file:
-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Define the data to be saved as a JSON object
$data = @{
    name = "John Doe"
    age = 35
    email = "johndoe@example.com"
}

# Sort the properties of the JSON object alphabetically
$json = ConvertTo-Json $data | Sort-Object

# Set the file path and name
$file = "105_test_data.json"

# Write the sorted JSON data to the file  
$json | Out-File $file

Get-Content "105_test_data.json" | Write-Host
<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

In this script, the Sort-Object cmdlet is used to sort the properties of the JSON object in alphabetical order before converting it to a JSON-formatted string using the ConvertTo-Json cmdlet.
 The sorted JSON data is then saved to the specified file path and name using the Out-File cmdlet.


#>
