# PowerShell script to download an image from a URL and save it as a file:
```
$url = "https://yt3.ggpht.com/moTK2hnp0WEGHZVNk56K-V1I41mg5epvcLqd337iRnX2J1AApwKV28XTGOCiD3L3LPgvLUNhTYgQ=s640-nd-v1"
$location = Get-Location
$outputPath = "$location\downloaded_file.jpg"

Invoke-WebRequest $url -OutFile $outputPath
```
In this script, replace the $url variable with the URL of the image you want to download,
and replace the $outputPath variable with the path and filename where you want to save the image.
When you run this script, it will download the image from the URL and save it as a file at the specified output path.