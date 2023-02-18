powershell script to grenerate the hashes of the files in the current directory and store the value in the json file name 'saved_hashes.json' and load the data from the json file in a nice format if it exist otherwise create one
Sure, here's a PowerShell script that should do what you're asking for:

powershell
Copy code
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
$savedHashes | ConvertTo-Json | Set-Content $hashesFile

# Display the saved hashes in a nice format
$savedHashes.GetEnumerator() | Sort-Object Name | Format-Table Name, Value -AutoSize
Here's a brief explanation of how the script works:

First, we define the name of the JSON file to save the hashes to.
Next, we check if the JSON file already exists. If it does, we load the hashes from the JSON file using the Get-Content and ConvertFrom-Json cmdlets. If it doesn't, we create an empty hashtable to store the hashes.
We then loop through each file in the current directory using the Get-ChildItem cmdlet. For each file, we calculate the SHA256 hash using the Get-FileHash cmdlet and add the hash to the saved hashes hashtable.
Once we've looped through all the files, we save the saved hashes hashtable to the JSON file using the ConvertTo-Json and Set-Content cmdlets.
Finally, we display the saved hashes in a nice format using the GetEnumerator, Sort-Object, and Format-Table cmdlets.
Note that this script assumes that you're running it from the directory where you want to calculate the hashes. If you want to calculate the hashes for a different directory, you'll need to modify the Get-ChildItem cmdlet accordingly.
