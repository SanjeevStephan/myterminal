<#
PS D:\terminal> .\show-figlet.ps1 "Call PyScript"
  ____      _ _   ____        ____            _       _
 / ___|__ _| | | |  _ \ _   _/ ___|  ___ _ __(_)_ __ | |_
| |   / _` | | | | |_) | | | \___ \ / __| '__| | '_ \| __|
| |__| (_| | | | |  __/| |_| |___) | (__| |  | | |_) | |_
 \____\__,_|_|_| |_|    \__, |____/ \___|_|  |_| .__/ \__|
                        |___/                  |_|

.SYNOPSIS
    
    Call the PyScript.py and pass argument from Pshell.ps1 using python parameter

.DESCRIPTION
    
    This PowerShell script calls a Python script named figlet.py with the --message parameter 
    set to the message you want to display: 
    
.PARAMETER

    .\call-figlet.ps1 -message [Message-to-display]

.EXAMPLE
    
    .\call-figlet.ps1 -message "Hello, World!"

     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES

    To pass a parameter to a Python script that accepts an argument using PowerShell,
    you can use the & call operator followed by the path of the Python executable, 
    the path of the Python script, and the arguments you want to pass.

    Here, you would replace the message with the actual message you want to display.

    Note that the python.exe executable path may vary depending on your Python installation. 
    If it's not in your system path, you may need to specify the full path to the executable.

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$message
)

# Call the figlet.py script with the --message parameter set to $message
& python.exe .\figlet.py --message $message


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> .\call-pyscript.ps1 -message "Hello Python"
 _   _      _ _         ____        _   _
| | | | ___| | | ___   |  _ \ _   _| |_| |__   ___  _ __
| |_| |/ _ \ | |/ _ \  | |_) | | | | __| '_ \ / _ \| '_ \
|  _  |  __/ | | (_) | |  __/| |_| | |_| | | | (_) | | | |
|_| |_|\___|_|_|\___/  |_|    \__, |\__|_| |_|\___/|_| |_|
                              |___/
PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

Here, we define a parameter named $message using the [CmdletBinding()] attribute and the Param() block. The Mandatory property ensures that the parameter is required, and the Position property specifies that it should be the first parameter.

We then use the call operator & followed by the path of the python.exe executable, the path of the figlet.py script, and the --message parameter set to $message to display the message using the Figlet font.


#>
