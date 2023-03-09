<#
PS D:\terminal> .\show-figlet.ps1 "Template"
 ____           _         _____                    _       _
|  _ \ __ _ ___| |_ ___  |_   _|__ _ __ ___  _ __ | | __ _| |_ ___
| |_) / _` / __| __/ _ \   | |/ _ \ '_ ` _ \| '_ \| |/ _` | __/ _ \
|  __/ (_| \__ \ ||  __/   | |  __/ | | | | | |_) | | (_| | ||  __/
|_|   \__,_|___/\__\___|   |_|\___|_| |_| |_| .__/|_|\__,_|\__\___|
                                            |_|

.SYNOPSIS
    Paste Template to new Script

.DESCRIPTION

    This PowerShell script creates and paste the template from a PowerShell script with parameters -File 

.PARAMETER

   .\paste-template.ps1 -file [\path\to\the\new\file.ps1]

.EXAMPLE

    .\paste-template.ps1 -file "D:\terminal\edit.ps1"
    .\paste-template.ps1 "D:\terminal\edit.ps1"

.AUTHOR
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    Here, you can get started with filling out the content after pasting the default template
    This Template can be used with the creation of only powershell aka ps1-scripts

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>
[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$file
)

# Call the edit-file.ps1 script with the -file parameter set to $file
# & .\edit-file.ps1 -file $file

& .\paste.ps1 -sourceFile .\template.ps1 -destinationFile $file

<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> .\paste-template.ps1 show-figlet.ps1
PS D:\terminal> dir

    Directory: D:\terminal

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---          15-02-2023    22:20           1642 edit.ps1
-a---          15-02-2023    21:37           1600 launch.ps1
-a---          15-02-2023    22:09            957 paste-template.ps1
-a---          15-02-2023    22:14           2225 paste.ps1
-a---          15-02-2023    22:29            568 show-figlet.ps1
-a---          15-02-2023    22:15            568 template.ps1

#>