<#
.SYNOPSIS
    
	backup environment variables that contain the keyword 'users'

.DESCRIPTION
    
    This PowerShell script to filter out only the environment variables with 'users' keywords
    
.PARAMETER

    

.EXAMPLE

    
.INPUTS


.OUTPUTS    


.NOTES

Note: You can modify the filter criteria to include other keywords or exclude other variables as needed.
 Also, remember to change the filename and path of the CSV file to a location of your choice if desired.
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

-------------------------------|| CODE_BELOW ||-----------------------------
#>

Get-ChildItem -Path "env:" | Where-Object { $_.Name -like "*users*" } | Select-Object Name, Value | Export-Csv "users_env_vars.csv" -NoTypeInformation


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

This script retrieves all items in the "env:" drive that contain the keyword 'users', selects the "Name" and "Value" properties, and
 exports them to a CSV file named "users_env_vars.csv".


#>
