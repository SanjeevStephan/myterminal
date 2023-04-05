function setEnv($key,$value) {

# Set the updated User-level Environmental Variables

[System.Environment]::SetEnvironmentVariable("$key", $value, "User")


}

function addVariables() {

<# 
You can loop through the keys of the hashtable using a foreach loop and display each key, which represents the file name, using the Write-Host cmdlet. Here's an example:
#>

$files = @{
    "myjson4"      = "C:\Users\Sanju\Documents\PowerShell\myjson4"
}

foreach ($key in $files.Keys) {
	$value = $files[$key]
	# & "1_add_variable_to_environment.ps1" -Key $key -Value $value
	setEnv($key,$value)
	Write-Host "Added Key : $key and Value : $value to the env"
	#Start-Sleep -Seconds 1
}


}


addVariables