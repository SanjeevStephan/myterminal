
# Open Terminal | Type -> .$profile
<#
 ____                        ____  _          _ _   _   _
|  _ \ _____      _____ _ __/ ___|| |__   ___| | | | | | |___  ___ _ __
| |_) / _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | | | | | / __|/ _ \ '__|
|  __/ (_) \ V  V /  __/ |   ___) | | | |  __/ | | | |_| \__ \  __/ |
|_|   \___/ \_/\_/ \___|_|  |____/|_| |_|\___|_|_|  \___/|___/\___|_|

#>
$paths  = @{
         "pyscript"  = "D:\pyscripts"
         "terminal"  = "D:\terminal"
         "powershell"=  "$HOME\Documents\PowerShell"
          
          }
$script = @{
            "figlet" = "D:\terminal\py\figlet.py"
    
           }
$func_name = @{
    "figlet <text_to_display>" = "display cool figlet ascii text " 
    "goto <directory_name>"    = "navigate to directory {py|terminal}"
    "run <script_name>"        = "execute script like {pygame|pymath}"
    "refresh"                  = "reload the Microsoft.PowerShell.Profile.ps1 script"
    "location"                 = "location of the scripts and directory in profile dictionary"
    "helpnow"                  = "Display this help menu"
    "google <text_to_query>"   = "Send Query to the Google using brave browser"


     }
#-------------------- Functions {One-Liner}----------------
function initialize() {
        #Display Cool Figlet Welcome Text 
        & python $script["figlet"] --message "PowerShell User"
        
        #call the function helpnow()
        helpnow 
}
function refresh() {
    .$profile
}
function helpnow(){

#$func_name.GetEnumerator() | Format-Table Name, Value -AutoSize

$func_name.GetEnumerator() | Format-Table @{label="Command"; expression={$_.Key}}, @{label="Syntax"; expression={$_.Value}} -AutoSize

}
#-------------------- Functions {Pass-Argument}----------------
function figlet($text_to_display){
    & python $script["figlet"] --message $text_to_display
}
function goto($dir_name) { 
#------------- Pass argument to the below functions 
# by calling the function name such as 'goto <argument>' 
# example:- goto py 
        switch ($dir_name) 
        {
            "powershell"
            {
                figlet("PowerShell")
                cd $paths[$dir_name]
                dir
            }
            "py" 
            {
                figlet("PyScript")
                cd $paths[$dir_name]
                dir
              
            }
            "terminal" 
            {
                figlet("Terminal")
                cd $paths[$dir_name]
                dir
            }
            "pymath" 
            {
                 figlet("pymath")
                 cd $paths[$dir_name]
            }
            Default 
            {
                Write-Host "You entered the directory[$dir_name] that is not on the profile dictionary"
            }
        }

}
function run($script_name) {
    
    Switch($script_name)
    {

        "pymath"
        {
            Write-Host "Pymath is running"
        }

        Default
        {
            Write-Host "Invalid Script Name | Retry "
        }
    }
}
function google($text_to_query) {

}
function greet($name,$age) {
    Write-Host "Hello, My Name is $name and i am $age year old"
}

#-------------------- Script Execution Begins from here----------------
initialize  #calling the initialize() function 