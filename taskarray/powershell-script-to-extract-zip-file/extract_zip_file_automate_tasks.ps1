$current_location = Get-Location

# Clears the Screen
clear

# Open the Window
Start-Process explorer.exe $pwd

# Wait 3 Seconds
Start-Sleep 3

# Define the path to the zip file
$zipFilePath = "$current_location\test.zip"

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



# Navigate to the extracted directory
cd $destinationFolder


# List extracted files
dir

cd ..

# Renamed 'test' to 'successfully-extracted-zip-file'
mv test successfully-extracted-zip-file

# Wait 3 Seconds
Start-Sleep 3

# Renamed 'test' to 'this-test-dir-wil-be-deleted'
mv successfully-extracted-zip-file this-test-dir-wil-be-deleted

# Wait 5 Seconds
Write-Output "test directory will be removed after 3 seconds"
Start-Sleep 5

cd ..

# remove the test directory after 3 seconds
Write-Output "Removing : $destinationFolder"
rm $destinationFolder -Force -Recurse



# List extracted files
dir 




