<#
.SYNOPSIS
    
    PowerShell script that adds a new key-value pair to the User-level Environmental Variables:. 

.DESCRIPTION
    

	This script adds a new key-value pair to the Path variable for the current user. 
	You can modify the variable name and value to suit your needs. 
	Be sure to run this script with administrative privileges to make changes to the Environmental Variables.
    
.PARAMETER

    

.EXAMPLE

    
.INPUTS


.OUTPUTS    


.NOTES

     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

-------------------------------|| CODE_BELOW ||-----------------------------
#>

# Define the key and value to add
$key = "MY_VARIABLE"
$value = "C:\MyFolder"

# Get the user-level Environmental Variables
$userEnv = [System.Environment]::GetEnvironmentVariable("Path", "User")

# Add the new key-value pair to the existing User-level Environmental Variables
$newUserEnv = "{0};{1}={2}" -f $userEnv, $key, $value

# Set the updated User-level Environmental Variables
[System.Environment]::SetEnvironmentVariable("Path", $newUserEnv, "User")


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>



#>
