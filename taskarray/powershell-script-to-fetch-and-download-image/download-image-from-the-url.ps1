$url = "https://yt3.ggpht.com/moTK2hnp0WEGHZVNk56K-V1I41mg5epvcLqd337iRnX2J1AApwKV28XTGOCiD3L3LPgvLUNhTYgQ=s640-nd-v1"
$location = Get-Location
$outputPath = "$location\downloaded_file.jpg"

Invoke-WebRequest $url -OutFile $outputPath

