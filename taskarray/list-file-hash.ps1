# Define the name of the JSON file to save the hashes to
$hashesFile = "saved_hashes.json"

#create an empty hashtable to store the hashes
$savedHashes = @{}

<#
# Check if the JSON file already exists
if (Test-Path $hashesFile) {
    # If it does, load the hashes from the JSON file
    $savedHashes = Get-Content $hashesFile | ConvertFrom-Json
} else {
    # If it doesn't, create an empty hashtable to store the hashes
    $savedHashes = @{}
}
#>

# Loop through each file in the current directory
Get-ChildItem -File | ForEach-Object {
    # Calculate the SHA256 hash of the file
    $hash = Get-FileHash $_.FullName -Algorithm SHA256 | Select-Object -ExpandProperty Hash

    # Add the hash to the saved hashes hashtable
    $savedHashes[$_.Name] = $hash
}

# Display the saved hashes in a nice format
echo "Listing SHA256 Hashes of the files in $PWD"

$savedHashes.GetEnumerator() | Sort-Object Name | Format-Table Name, Value -AutoSize

