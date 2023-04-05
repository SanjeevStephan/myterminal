<# 
You can loop through the keys of the hashtable using a foreach loop and display each key, which represents the file name, using the Write-Host cmdlet. Here's an example:
#>

$files = @{
    "SUPERUSER_TERMINAL"      = "D:\terminal"
    "ChocolateyLastPathUpdate" = "133236233566212491"
    "OneDrive" = "C:\Users\Sanju\OneDrive"
    "OneDriveConsumer" = "C:\Users\Sanju\OneDrive"
    "snippet" = "D:\terminal\code_snippets\python"
    "TEMP" = "%USERPROFILE%\AppData\Local\Temp"
    "TERMINAL" = "D:\terminal"
    "TMP" = "%USERPROFILE%\AppData\Local\Temp"
    "USER_TERMINAL" = "D:\terminal"

}

foreach ($key in $files.Keys) {
	$value = $files[$key]
	# & "1_add_variable_to_environment.ps1" -Key $key -Value $value
	.\1_add_variable_to_environment.ps1 $key $value
	Write-Host "Added Key : $key and Value : $value to the env"
	Start-Sleep -Seconds 1
}
