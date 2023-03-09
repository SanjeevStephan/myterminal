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

