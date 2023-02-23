<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   check the current file hash and compare the hash from the json file named 'saved_hashes.json' display the changed file hashes and unchanged file hashes separately in a nice format
    
.RESPONSE
   Certainly, here's an updated PowerShell script that will check the current file hash against the saved hashes in the saved_hashes.json file and display the changed and unchanged file hashes in a nice format:

.SYNTAX
   

.DESCRIPTION
 

.NOTE
Note that this script assumes that you're running it from the directory where you want to check the file hashes. If you want to

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------#>


# Define the name of the JSON file to load the saved hashes from
$hashesFile = "saved_hashes.json"

# Check if the JSON file already exists
if (Test-Path $hashesFile) {
    # If it does, load the saved hashes from the JSON file
    $savedHashes = Get-Content $hashesFile | ConvertFrom-Json
} else {
    # If it doesn't, create an empty hashtable to store the saved hashes
    $savedHashes = @{}
}

# Create empty arrays to store changed and unchanged files
$changedFiles = @()
$unchangedFiles = @()

# Loop through each file in the current directory
Get-ChildItem -File | ForEach-Object {
    # Calculate the SHA256 hash of the file
    $hash = Get-FileHash $_.FullName -Algorithm SHA256 | Select-Object -ExpandProperty Hash

    # Check if the file's hash matches the saved hash, if it exists
    if ($savedHashes.ContainsKey($_.Name) -and $savedHashes[$_.Name] -eq $hash) {
        # If the hash is unchanged, add the file to the unchanged files array
        $unchangedFiles += $_
    } else {
        # If the hash is changed, add the file to the changed files array and update the saved hash
        $changedFiles += $_
        $savedHashes[$_.Name] = $hash
    }
}

# Save the updated saved hashes to the JSON file
$savedHashes | ConvertTo-Json | Set-Content $hashesFile

# Display the changed and unchanged files in a nice format
if ($changedFiles.Count -gt 0) {
    Write-Host "Changed files:"
    $changedFiles | Select-Object Name, FullName | Format-Table -AutoSize
}

if ($unchangedFiles.Count -gt 0) {
    Write-Host "Unchanged files:"
    $unchangedFiles | Select-Object Name, FullName | Format-Table -AutoSize
}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

Here's a brief explanation of how the updated script works:

First, we define the name of the JSON file to load the saved hashes from.
Next, we check if the JSON file already exists. If it does, we load the saved hashes from the JSON file using the Get-Content and ConvertFrom-Json cmdlets. If it doesn't, we create an empty hashtable to store the saved hashes.
We then create empty arrays to store the changed and unchanged files.
We loop through each file in the current directory using the Get-ChildItem cmdlet. For each file, we calculate the SHA256 hash using the Get-FileHash cmdlet and compare it to the saved hash, if it exists. If the hashes match, we add the file to the unchanged files array. If the hashes don't match, we add the file to the changed files array and update the saved hash in the hashtable.
Once we've looped through all the files, we save the updated saved hashes to the JSON file using the ConvertTo-Json and Set-Content cmdlets.
Finally, we display the changed and unchanged files in a nice format using the Write-Host, Select-Object, and Format-Table cmdlets.

.LINK
   -> https://chat.openai.com/chat/

#>
