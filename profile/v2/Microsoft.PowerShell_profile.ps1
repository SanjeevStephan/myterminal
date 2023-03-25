
<#
.$profile
 ____                        ____  _          _ _   _   _
|  _ \ _____      _____ _ __/ ___|| |__   ___| | | | | | |___  ___ _ __
| |_) / _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | | | | | / __|/ _ \ '__|
|  __/ (_) \ V  V /  __/ |   ___) | | | |  __/ | | | |_| \__ \  __/ |
|_|   \___/ \_/\_/ \___|_|  |____/|_| |_|\___|_|_|  \___/|___/\___|_|

#>
<#-------------------- Include Files ----------------
.AUTHOR
    ->Sanjeev_Stephan_Murmu

.FILES
    -> Microsoft.PowerShell_profile.ps1
    -> profile_config.ps1
    -> profile_func.ps1
    -> profile_include.ps1
    -> profile_path.ps1

.CONTAINS
    -> configuration
    -> dictionary
    -> paths
    -> variables
    -> functions
    -> includedFiles

#>
#-------------------- Include Below File ----------------
. "$HOME\Documents\PowerShell\profile_include.ps1"
#-------------------- Functions {One-Liner}--------------
function initialize() {
        # clearScreen # Clear the Screen 
        # & python $script["figlet"] --message $initial_title
        display_random_title #Display Cool Figlet Welcome Text
        
        #call the function helptab()
        # helptab("terminal") 
        #load the todo-lis from 'pls-cli' pymodule
        #pls
        # .$script["quotesoftheday"] # display quotes of the day
        

        
        showip
        cd $path["terminal"]
        #iamonline
}
function clearScreen() {
 echo "Waiting 4 Seconds to clear the Screen"
 Start-Sleep 4
 Clear
}

#-------------------- Script Execution Begins from here-----
initialize  #calling the initialize() function 