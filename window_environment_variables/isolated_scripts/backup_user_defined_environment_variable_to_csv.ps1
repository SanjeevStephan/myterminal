<#
.SYNOPSIS
    


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

#Get-ChildItem -Path "env:" | Where-Object { $_.Name -notlike "=*"} | Select-Object Name, Value | Export-Csv "user_env_vars.csv" -NoTypeInformation

#Get-ChildItem -Path "env:" | Where-Object { $_.Name -notlike "System*" -and $_.Name -notlike "COMPUTERNAME" -and $_.Name -notlike "Windows*"} | Select-Object Name, Value | Export-Csv "user_env_vars.csv" -NoTypeInformation

Get-ChildItem -Path "env:" | Where-Object { $_.Name -like "*users*" } | Select-Object Name, Value | Export-Csv "users_env_vars.csv" -NoTypeInformation


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
