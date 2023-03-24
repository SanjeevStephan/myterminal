$url = "https://github.com/rockymeza/wifi/archive/refs/heads/master.zip"
$location = Get-Location


# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($url)

$outputFolder = "$location\$zipFileNameWithoutExtension"

# Download the ZIP file
Invoke-WebRequest -Uri $url -OutFile "$location\wifi.zip"

# Extract the ZIP file
Expand-Archive -Path "$location\wifi.zip" -DestinationPath $outputFolder

# Navigate to the directory
Set-Location -Path "$outputFolder\wifi-master"

# Install the wifi module
dir
python setup.py install

