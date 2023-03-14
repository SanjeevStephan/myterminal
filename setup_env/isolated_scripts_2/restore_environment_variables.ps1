<#
.SYNOPSIS
    
	PowerShell script to restore all the Environmental Variables for the current user using an XML file:

.DESCRIPTION
    
    This PowerShell script imports the Environmental Variables from the XML file located at "C:\users\$env:USERNAME\env_variables.xml" using the Import-Clixml cmdlet. 
    It then sets the Environmental Variables using the SetEnvironmentVariable method of the System.Environment class. 
    
.PARAMETER

    

.EXAMPLE

    
.INPUTS


.OUTPUTS    


.NOTES
	Note that the $env:USERNAME environment variable is used to construct the full path to the input file,
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Define the input file path
$inputFile = "C:\users\$env:USERNAME\env_variables.xml"

# Import the Environmental Variables from the XML file
$userEnv = Import-Clixml $inputFile

# Set the user-level Environmental Variables
$userEnv | ForEach-Object { [System.Environment]::SetEnvironmentVariable($_.Name, $_.Value, "User") }


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------

#>
