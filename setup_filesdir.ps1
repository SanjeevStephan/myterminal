<#

$directories = @{
    "test"               = "D:\terminal\.test\"
    "setup_task"         = "D:\terminal\setup_task\"
    "setup_tool"         = "D:\terminal\setup_tool\"
    "setup_pkg"          = "D:\terminal\setup_pkg\"
    "setup_figlet"       = ""
}
#>

$directories = @"
[
    {"Name": "setup_task",    "Path": "D:\\terminal\\setup_task\\",   "Description": "Signal Script File based Task" },
    {"Name": "setup_tool",    "Path": "D:\\terminal\\setup_tool\\",   "Description": "Setup Related Tools" },
    {"Name": "setup_pkg",     "Path": "D:\\terminal\\setup_pkg\\",    "Description": "Multiple Scripts Pkgs" },
    {"Name": "setup_figlet",  "Path": "D:\\terminal\\taskarray\\powershell-script-to-display-figlet\\", "Description": "ASCII Figlet saved in textfiles"}
]
"@


$files = @{
    "script_launcher.ps1" = "Launches the PowerShell Scripts"
    "setup_config.ps1"    = "Contains Script Configuration Settings"
    "setup_edit.ps1"      = "Edit All the setup files in the powershell"
    "setup_filesdir.ps1"  = "Dictionary of Setup Files and Directories"
    "setup_func.ps1"      = "Contains Setup Operational Functions"
    "setup_guide.ps1"     = "Understand how the terminal_setup_v1.0 script works"
    "setup_include.ps1"   = "Includes necessaries setup dependencies"
    "setup_path.ps1"      = "Important Setup related paths"
    "setup_script.ps1"    = "Dictionary of Executable {py,ps1,cmd} Scripts"
    "setup.ps1"           = "Main Terminal Setup Script v1.0"

}