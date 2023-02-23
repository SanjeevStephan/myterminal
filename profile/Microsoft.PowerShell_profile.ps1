
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
        helptab("terminal") 
        #load the todo-lis from 'pls-cli' pymodule
        pls

}
function refresh() {
     figlet "Refreshing"
     cls
    .$profile
}
function rf() {
     figlet "Refreshing"
     cls
    .$profile
}
function lst() {
# Display only the files names
figlet "List File-names"
Get-ChildItem | Select-Object Name
}
function alias() {
    figlet "Get-Alias"
    Get-Alias
}
function backup() {
figlet "backup-ing profile-configs"
Write-Host "Please Wait"
# Copy all files & directories from the $HOME/document/powershell directory to the destination directory
cd $profile_source
Copy-Item -Path * -Destination $profile_backup_path -Recurse -Force -Verbose
Write-Host "All Files Copied $profile_backup_path"
cd $profile_backup_path
dir 
}
function window() {
#Open Window in Current Directory
# Start the PowerShell ISE process
Start-Process explorer.exe $pwd
}


#-------------------- Script Execution Begins from here-----
initialize  #calling the initialize() function 