# Define the URL of the file to download
$url = "https://github.com/SpacehuhnTech/esp8266_deauther/archive/v2.zip"

# Get the base name of the zip file (without the extension)
$zipFileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($url)

# Define the path to save the downloaded file
$outputFile = "D:\terminal\taskarray\powershell-script-to-extract-zip-file\$zipFileNameWithoutExtension.zip"

# Create a web client object to download the file
$client = New-Object System.Net.WebClient

# Download the file from the URL and save it to the output file path
$client.DownloadFile($url, $outputFile)
