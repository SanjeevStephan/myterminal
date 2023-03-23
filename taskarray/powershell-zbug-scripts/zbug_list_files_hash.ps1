<#
.SYNOPSIS
    
    store and load the value in the json file name 'saved_hashes.json'

.DESCRIPTION
    
    This PowerShell script grenerate the hashes of the files in the current directory and
     store the value in the json file name 'saved_hashes.json' 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Define the name of the JSON file to save the hashes to
$hashesFile = "saved_hashes.json"

# Check if the JSON file already exists
if (Test-Path $hashesFile) {
    # If it does, load the hashes from the JSON file
    $savedHashes = Get-Content $hashesFile | ConvertFrom-Json
} else {
    # If it doesn't, create an empty hashtable to store the hashes
    $savedHashes = @{}
}

# Loop through each file in the current directory
Get-ChildItem -File | ForEach-Object {
    # Calculate the SHA256 hash of the file
    $hash = Get-FileHash $_.FullName -Algorithm SHA256 | Select-Object -ExpandProperty Hash

    # Add the hash to the saved hashes hashtable
    $savedHashes[$_.Name] = $hash
}

# Save the saved hashes hashtable to the JSON file
# $savedHashes | ConvertTo-Json | Set-Content $hashesFile

# Display the saved hashes in a nice format
$savedHashes.GetEnumerator() | Sort-Object Name | Format-Table Name, Value -AutoSize


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
