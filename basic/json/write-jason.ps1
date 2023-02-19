# Create a PowerShell dictionary
$dictionary = @{
    "name" = "John Smith"
    "age" = 30
    "email" = "john.smith@example.com"
}

# Convert the dictionary to JSON
$json = $dictionary | ConvertTo-Json

# Write the JSON to a file
Set-Content -Path "jason-file.json" -Value $json

