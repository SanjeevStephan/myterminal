$current_location = Get-Location

# Define the path to the zip file
$zipFilePath = "$current_location\v2.zip"

# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($zipFilePath)

# Define the destination folder with the same name as the zip file
$destinationFolder = "$current_location\$zipFileNameWithoutExtension"

# Create the destination folder if it doesn't already exist
if(!(Test-Path -Path $destinationFolder)){
    New-Item -ItemType Directory -Path $destinationFolder
}

# Extract the contents of the zip file to the destination folder
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolder)

