# Get the user-defined environment variables and save them to an XML file
$envVariables = Get-ChildItem Env: | Where-Object { -not $_.PSChildName.StartsWith('ComSpec') -and -not $_.PSChildName.StartsWith('TEMP') -and -not $_.PSChildName.StartsWith('TMP') }
$envVariables | Export-Clixml -Path "user_env_variables.xml"

