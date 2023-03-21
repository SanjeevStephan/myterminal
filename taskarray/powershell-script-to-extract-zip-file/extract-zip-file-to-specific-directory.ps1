# Define the path to the zip file and the destination folder
$zipFilePath = "C:\example\example.zip"
$destinationFolder = "C:\example\extracted"

# Create the destination folder if it doesn't already exist
if(!(Test-Path -Path $destinationFolder)){
    New-Item -ItemType Directory -Path $destinationFolder
}

# Extract the contents of the zip file to the destination folder
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolder)

