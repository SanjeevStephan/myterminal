## PowerShell script to extract a zip file:

```
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
```

In this script, the Add-Type command is used to load the System.IO.Compression.FileSystem assembly, which provides the ZipFile class with the ExtractToDirectory method.
 This method takes two parameters: the path to the zip file and the destination folder where the contents of the zip file will be extracted to.

Before extracting the zip file, the script checks whether the destination folder already exists using the Test-Path cmdlet.
If the destination folder doesn't exist, the script creates it using the New-Item cmdlet with the -ItemType Directory parameter.

## extract to a directory with the same name as the zip file

```
# Define the path to the zip file
$zipFilePath = "C:\example\example.zip"

# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($zipFilePath)

# Define the destination folder with the same name as the zip file
$destinationFolder = "C:\example\$zipFileNameWithoutExtension"

# Create the destination folder if it doesn't already exist
if(!(Test-Path -Path $destinationFolder)){
    New-Item -ItemType Directory -Path $destinationFolder
}

# Extract the contents of the zip file to the destination folder
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipFilePath, $destinationFolder)

```

In this modified script, the base name of the zip file (without the extension) is obtained using the GetFileNameWithoutExtension method of the System.IO.Path class.
This base name is then used to define the destination folder path with the same name as the zip file.
The rest of the script is the same as the previous example, where the destination folder is created if it doesn't already exist and the contents of the zip file are extracted to the destination folder.