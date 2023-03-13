<#
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script to replace all occurrences of the underscore character ("_") with the hyphen character ("-") in the file names of all files in a directory: 
    
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

# Replace all underscores with hyphens in the file names of all files in a directory
Get-ChildItem -Path "C:\path\to\directory" | 
ForEach-Object {
    $newName = $_.Name.Replace("_", "-")
    Rename-Item -Path $_.FullName -NewName $newName
}


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

Here's a breakdown of how the script works:

The Get-ChildItem cmdlet is used to retrieve a collection of all the files in the directory specified by the -Path parameter. This collection is then piped to the ForEach-Object cmdlet.

Within the ForEach-Object script block, we create a new variable $newName and set its value to the original file name with all underscores replaced with hyphens using the Replace() method.

Finally, we use the Rename-Item cmdlet to rename each file by passing in the current file's full name ($_.FullName) and the new file name ($newName) as parameters.


#>
