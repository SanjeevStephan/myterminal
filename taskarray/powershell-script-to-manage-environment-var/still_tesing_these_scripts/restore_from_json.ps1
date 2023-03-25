# Restore the environment variables from the JSON file
$envJson = Get-Content -Raw -Path "json_env_variables.json"
$envVariables = $envJson | ConvertFrom-Json
foreach ($var in $envVariables) {
    [Environment]::SetEnvironmentVariable($var.Name, $var.Value)
}

