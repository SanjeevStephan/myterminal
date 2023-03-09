copy .\nano.exe "C:\Program Files\PowerShell\7"

$nano_path = "C:\Program Files\PowerShell\7\nano.exe"

if(test-path $nano_path)  { Write-Output "Successfully Copied nano.exe to programfiles"}
else { Write-Output "Unable to copy nano.exe"}