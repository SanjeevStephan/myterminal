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

[xml]$xml = Get-Content -Path "filename.xml"
$xml.env.var | ForEach-Object {
  [Environment]::SetEnvironmentVariable($_.name, $_.value, $_.target)
}


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
