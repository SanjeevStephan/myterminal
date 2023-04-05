$url = "https://download.sysinternals.com/files/PSTools.zip"
$location = Get-Location


# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($url)

$outputFolder = "$location\$zipFileNameWithoutExtension"

# Download the ZIP file
Invoke-WebRequest -Uri $url -OutFile "$location\PSTool.zip"

# Extract the ZIP file
Expand-Archive -Path "$location\PSTool.zip" -DestinationPath $outputFolder

# Navigate to the directory
Set-Location -Path "$outputFolder\PSTool"

# Install the wifi module
dir
#python setup.py install

