<#
.SYNOPSIS
    
	PowerShell script that will extract the IPv4 address from the output of the ipconfig command:

.DESCRIPTION
    
    This PowerShell script . 
    
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

ipconfig | Select-String "IPv4 Address" | ForEach-Object { $_.ToString().Split(":")[1].Trim() }


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------
This script will:

Run the ipconfig command.
Filter the output to find the line containing "IPv4 Address".
For each match found, extract the IP address by splitting the string at the ":" character and trimming any whitespace.
Note that this script assumes that there is only one IPv4 address in the output of ipconfig. If there are multiple IPv4 addresses, you may need to modify the script to handle that case.



#>
