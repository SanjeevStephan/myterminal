    
    param(
        [Parameter(Mandatory=$true)]
        [string]$zipfile
    
    )


$current_location = Get-Location

$zipfilename = $zipfile.replace(".\","")

# Define the path to the zip file
$zipFilePath = "$current_location\$zipfilename"

# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($zipFilePath)

# Define the destination folder with the same name as the zip file
$destinationFolder = "$current_location\$zipFileNameWithoutExtension"


Write-Output "[Location] $current_location"
Write-Output "[Zip-File] $zipfilename"
Write-Output "[Zip-Path] $zipFilePath"
Write-Output "[Output] Directory : $zipFileNameWithoutExtension"
Write-Output "[Output-Path] $destinationFolder "

# Create the destination folder if it doesn't already exist
if(!(Test-Path -Path $destinationFolder)){
    New-Item -ItemType Directory -Path $destinationFolder
}

# Extract the contents of the zip file to the destination folder
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolder)

