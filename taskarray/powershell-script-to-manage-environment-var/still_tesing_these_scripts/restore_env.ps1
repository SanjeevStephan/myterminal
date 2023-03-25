# Restore the environment variables from the backup file
$envVariables = Import-Clixml -Path "env_variables.xml"
foreach ($var in $envVariables) {
    [Environment]::SetEnvironmentVariable($var.Name, $var.Value, $var.Type)
}

