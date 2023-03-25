#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_include.ps1
. .\setup_filesdir.ps1
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

    Write-Output "[?] Press (a) to edit all setup files in terminal directory :"
    Write-Output "[?] Press (e) to edit the 'setup_config.ps1' file :"
    Write-Output "[?] Press (y/n) to Start Execution of the Scripts :"

    $choice = Read-Host "[INPUT] Enter Your Option to Continue : "

    if($choice -eq "y") {

        Launch_Script("test")
        Launch_Script("copy_files_dependencies")
        Launch_Script("install_python")
        Launch_Script("pip_installer")

        Manage_Profile("restore")

    } elseif ($choice -eq "e" ) { powershell_ise.exe setup_config.ps1 }
      elseif ($choice -eq "a" ) { .\setup_edit.ps1 }
    else { Write-Output "Execution Denied "}

}


function initialize() {

Overview_Script_Status

Beging_Execution
}

# log("initializing script")
Display_Figlet(1) # Figlet : terminal_logo
initialize                     # Script Launched
ReturnHome                      # Return to the D:\terminal Directory
