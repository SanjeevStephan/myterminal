

function addEnv() {

$files = @{
    "MyJson" = "C:\Users\Sanju\Documents\PowerShell\myjson"
}

foreach ($key in $files.Keys) {
	$value = $files[$key]
	# & "1_add_variable_to_environment.ps1" -Key $key -Value $value
	# .\1_add_variable_to_environment.ps1 $key $value

    [System.Environment]::SetEnvironmentVariable("$key", $value, "User")

	Write-Host "Added Key : $key and Value : $value to the env"
	Start-Sleep -Seconds 1
}

}