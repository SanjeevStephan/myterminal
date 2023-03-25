#-------------------- Include <this-file> in the setup.ps1 ----------------
# . .\setup_config.ps1

$variable = @{
    "script_name"    = "Terminal Setup Script"
    "script_version" = "v1.0"
    "author_name"    = "Sanjeev Stephan Murmu"
    "created_on"     = "9th March 2023"


}
<#  
    Script FEATURES -> enable | disable 
#>
$enable = @{
    "show_task_details" = "enable"


}
<#
    Executable Script -> yes | no
#>
$executable = @{
    "test"                    = "yes"
    "copy_files_dependencies" = "yes"
    "restore_profile"         = "no"
    "install_python"          = "yes"
    "pip_installer"           = "yes"



}

