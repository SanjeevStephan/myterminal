<#
.SYNOPSIS
    
	PowerShell script that will extract the IPv4 address from the output of the ipconfig command:

.DESCRIPTION
    
    Here's a modified version of the script that will only return the first IPv4 address:
    
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

ipconfig | Select-String "IPv4 Address" | Select-Object -First 1 | ForEach-Object { $_.ToString().Split(":")[1].Trim() }


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------
This script will:

This script uses the Select-Object cmdlet with the -First parameter to select only the first match found by Select-String. 
The rest of the script is the same as before, extracting the IP address from the matched string.
#>
