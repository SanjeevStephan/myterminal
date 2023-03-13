
   param(
       [Parameter(Mandatory=$true)]
       [string]$Jsonfile
   )

   $msg = "Json-File : $Jsonfile Loaded and Executed"


# Read JSON file
$json = Get-Content -Raw -Path $Jsonfile

# $json = Get-Content -Raw -Path "json_env_variables.json"

$envVariables = ConvertFrom-Json $json

# Loop through environment variables and set them
foreach ($envVar in $envVariables) {
    $key = $envVar.Name
    $value = $envVar.Value
    # & 1_add_variable_to_environment.ps1 -Key $key -Value $value
    .\1_add_variable_to_environment.ps1 $key $value
    Write-Output "Added Key : $key with Value : $value to the environment"

return $msg
}

