<#
    This code loops through the keys of hashtable $env_vars using $env_vars.Keys, and for each key
#>
$env_vars = @{
    "TEMP" = "C:\Windows\Temp"
    "PATH" = "C:\Windows\System32;C:\Program Files\PowerShell\7"
    "USERNAME" = "jdoe"
}

foreach ($key in $env_vars.Keys) {
    $value = $env_vars[$key]
    Write-Host "Added Key : $key & Value : $value to the env"
    Start-Sleep -Seconds 1
}
