#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_include.ps1
#. .\setup_home.ps1
#----------------------------------------------------------------------------------------------------------   
log('Launching ' + $variable["script_name"])

<#
------------{ display_figlet_from_txtfile($indexNum) }------------------
 Pass Below Argument to get Desired Results
 100 -> Display the All figlet files in the JsonArray
 101 -> Dispaly All figlet's contents one-by-one from the JsonArray
 single_digit_num {1,2,3} -> TO display particular figlet's content of single item-index
#>
function Beging_Execution() {

    $choice = Read-Host "[INPUT] Do You Want to Start Execution of the Scripts (y/n) : "

    if($choice -eq "y") {

        Launch_Script("test")
        #copy_files_dependencies
        Launch_Script("install_python")
        Launch_Script("pip_installer")
        Launch_Script("copy_files_dependencies")
        Manage_Profile("restore")
    } else { Write-Output "Execution Denied "}

}


function initialize() {

Overview_Script_Status

Beging_Execution
}

# log("initializing script")
Display_Figlet(1) # Figlet : terminal_logo
initialize                     # Script Launched
ReturnHome                      # Return to the D:\terminal Directory
