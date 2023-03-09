<#
.SYNOPSIS

    Copy the contents of one file to another file:

.DESCRIPTION

    This PowerShell script copies the contents of one file to another file . 
    
.PARAMETER

    .\copy-file.ps1 -sourceFile [source\file.txt] -destinationFile [destination\file.txt]

.EXAMPLE

    .\copy-file.ps1 -sourceFile "C:\path\to\source\file.txt" -destinationFile "C:\path\to\destination\file.txt"
     
.AUTHOR

    -Sanjeev Stephan Murmu

.LINK

.NOTES
    To paste the contents of one file to another file using PowerShell, 
    you can use the Get-Content cmdlet to read the contents of the source file, 
    and the Out-File cmdlet to write the contents to the destination file.

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$sourceFile,
    [Parameter(Mandatory=$true, Position=1)]
    [string]$destinationFile
)

# Get the contents of the source file
$content = Get-Content $sourceFile

# Write the contents to the destination file
$content | Out-File $destinationFile


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> .\paste.ps1 .\edit.ps1 new-test-file.ps1
PS D:\terminal> dir

    Directory: D:\terminal

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----

-a---          15-02-2023    21:48           1517 edit.ps1
-a---          15-02-2023    22:10           1517 new-test-file.ps1

---------------------------{ Before Pasting Content }----------------------
PS D:\terminal> dir

    Directory: D:\terminal

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---          15-02-2023    22:14           2225 paste.ps1
-a---          15-02-2023    22:50           2745 call-pyscript.ps1
-a---          15-02-2023    22:39           1658 show-figlet.ps1

---------------------------{ After Pasting Content }----------------------
PS D:\terminal> .\paste.ps1 .\call-pyscript.ps1 .\show-figlet.ps1
PS D:\terminal> dir

    Directory: D:\terminal

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---          15-02-2023    22:14           2225 paste.ps1
-a---          15-02-2023    22:50           2745 call-pyscript.ps1
-a---          15-02-2023    22:52           2745 show-figlet.ps1

Note :- Both Files's size also becomes the same

-------------------------------|| HOW THE SCRIPT WORK ||--------------------
Here, we define two parameters named $sourceFile and $destinationFile using the [CmdletBinding()] attribute and the Param() block.
The Mandatory property ensures that both parameters are required, and the Position property specifies their position.

The Get-Content cmdlet is then used to read the contents of the source file and store them in the $content variable.

Finally, the contents of $content are piped to the Out-File cmdlet, which writes them to the destination file.


#>
