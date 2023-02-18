<#
.SYNOPSIS
    
	Copy All Files to ~/Documents/PowerShell

.DESCRIPTION
    
   This PowerShell script copys all the files and directory from 
   current working directory to the 'User-Documents/PowerShell' Directory 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

#cp * ~/Documents/PowerShell

$source = "$HOME\Documents\PowerShell"
$destination = "D:\terminal"


# Create the destination directory if it does not exist
#if (!(Test-Path -Path $destination)) {
#    New-Item -ItemType Directory -Path $destination
#}

# Copy all files and directories from the source directory to the destination directory
Copy-Item -Path $source\* -Destination $destination -Recurse -Force


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
