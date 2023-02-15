<#
.SYNOPSIS
    Launch Window Application

.DESCRIPTION
    This PowerShell script launches a Windows application using a PowerShell script with parameters, 
    you can use the [Start-Process] cmdlet. 
    
.PARAMETER
   .\launch.ps1 -app [\path\to\the\software.exe]

.EXAMPLE
     To run this script and launch the Brave browser, you can use the following command:

    .\launch.ps1 -app "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
.AUTHOR
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    Here, you would replace the file path with the actual path to the executable app on your machine.

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$app
)

$process = Start-Process -FilePath $app -PassThru

# Wait for the application to finish before exiting the script
$process.WaitForExit()


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
.HOW-THE-SCRIPT-WORK

Here, we define a parameter named $app using the [CmdletBinding()] attribute and the Param() block. 
The Mandatory property ensures that the parameter is required, and 
the Position property specifies that it should be the first parameter.

The $process variable uses the [Start-Process] cmdlet to launch the application specified by the $app parameter. 
The -PassThru parameter returns the process object so that we can use the WaitForExit() method to wait for the application to finish 
before exiting the script.

#>
