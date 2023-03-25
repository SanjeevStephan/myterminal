
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
        #Display Cool Figlet Welcome Text 
        & python $script["figlet"] --message $initial_title
        
        #call the function helptab()
        # helptab("terminal") 
        #load the todo-lis from 'pls-cli' pymodule
        #pls
        .$script["quotesoftheday"] # display quotes of the day
        cd $paths["terminal"]

        
        showip
        iamonline
}
function goodbye(){
    figlet("Good Bye!Stephan")
    shutdown -s -t 00

}

#-------------------- Script Execution Begins from here-----
initialize  #calling the initialize() function 