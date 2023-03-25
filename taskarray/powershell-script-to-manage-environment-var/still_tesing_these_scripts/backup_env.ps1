# Get the environment variables and save them to an XML file
Get-ChildItem Env: | Export-Clixml -Path "env_variables.xml"

