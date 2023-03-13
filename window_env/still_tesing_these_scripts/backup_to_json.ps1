# Get the environment variables and convert them to a JSON object
$envVariables = Get-ChildItem Env: | Select-Object -Property Name, Value
$envJson = $envVariables | ConvertTo-Json

# Save the JSON object to a file
$envJson | Out-File -FilePath "json_env_variables.json"

