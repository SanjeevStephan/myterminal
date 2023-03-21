<#
.SYNOPSIS
    
	To replace only the files with a .ps1 extension, you can modify the script by adding a Where-Object cmdlet to filter for only files with a .ps1 extension:

.DESCRIPTION
    
    In This PowerShell script  the -Filter parameter is used to only retrieve files with a .ps1 extension.
    The Where-Object cmdlet is not necessary since the -Filter parameter already filters the results.. 
    
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

# Replace all underscores with hyphens in the file names of all .ps1 files in a directory
Get-ChildItem -Path "C:\path\to\directory" -Filter *.ps1 | 
ForEach-Object {
    $newName = $_.Name.Replace("_", "-")
    Rename-Item -Path $_.FullName -NewName $newName
}


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
