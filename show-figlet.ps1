<#
PS D:\terminal> .\show-figlet.ps1 "Show Figlet"
 ____  _                     _____ _       _      _
/ ___|| |__   _____      __ |  ___(_) __ _| | ___| |_
\___ \| '_ \ / _ \ \ /\ / / | |_  | |/ _` | |/ _ \ __|
 ___) | | | | (_) \ V  V /  |  _| | | (_| | |  __/ |_
|____/|_| |_|\___/ \_/\_/   |_|   |_|\__, |_|\___|\__|
                                     |___/

.SYNOPSIS

    Edit PowerShell file in the PowerShell ISE

.DESCRIPTION

    This PowerShell script opens a PowerShell file in the PowerShell ISE:. 
    
.PARAMETER

    .\edit-file.ps1 -file [\path\to\file.ps1]

.EXAMPLE

    .\edit-file.ps1 -file "C:\path\to\file.ps1"
     
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
    [string]$message
)

# Start the PowerShell ISE process
& python.exe .\figlet.py --message $message


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> .\edit.ps1 .\template.ps1


-------------------------------|| HOW THE SCRIPT WORK ||--------------------
Here, we define a parameter named $file using the [CmdletBinding()] attribute and the Param() block. 
The Mandatory property ensures that the parameter is required, and the Position property specifies that it should be the first parameter.

The Start-Process cmdlet is then used to start the PowerShell ISE process with the -FilePath parameter set to powershell_ise.exe and 
the -ArgumentList parameter set to the path of the file you want to edit.


#>
