# PowerShell script to download zip file
```
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
```

In this script, the URL of the file to download is defined in the *$url* variable, and the path to save the downloaded file is defined in the *$outputFile* variable.

A web client object is created using the *New-Object* cmdlet, which allows us to download the file from the URL using the *DownloadFile* method of the web client object.
 This method takes two parameters: the URL of the file to download and the path to save the downloaded file.

When you run this script, the *"https://github.com/SpacehuhnTech/esp8266_deauther/archive/v2.zip"* file will be downloaded from the URL and saved to the *D:\terminal\taskarray\powershell-script-to-extract-zip-file\v2.zip* file path.
