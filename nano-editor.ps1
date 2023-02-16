<#
PS D:\terminal> .\show-figlet.ps1 "Edit"
 _____    _ _ _
| ____|__| (_) |_
|  _| / _` | | __|
| |__| (_| | | |_
|_____\__,_|_|\__|

.SYNOPSIS

   Nano File Editor

.DESCRIPTION

    This PowerShell script opens a file in the nano file editor:. 
    
.PARAMETER

    .\nano-edit.ps1 -file [\path\to\file.ps1]

.EXAMPLE

    .\nano-edit.ps1 -file "C:\path\to\file.ps1"
     
.AUTHOR
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    To edit PowerShell files using the PowerShell ISE, 
    you can use the Start-Process cmdlet with the -FilePath parameter set to the path of the PowerShell ISE executable, 
    and the -ArgumentList parameter set to the path of the file you want to edit.

-------------------------------|| CODE_BELOW ||-----------------------------
#>

[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$file
)

# Start the PowerShell ISE process
#Start-Process nano.exe -ArgumentList $file
.\tools\nano.exe $file

<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> .\nano-edit.ps1 .\template.ps1


-------------------------------|| HOW THE SCRIPT WORK ||--------------------
Here, we define a parameter named $file using the [CmdletBinding()] attribute and the Param() block. 
The Mandatory property ensures that the parameter is required, and the Position property specifies that it should be the first parameter.

The Start-Process cmdlet is then used to open the nano file editor using parameter -FilePath parameter set to powershell_ise.exe and 
the -ArgumentList parameter set to the path of the file you want to edit.


#>
