
$variable = @{
    "script_name"  = "Setup Script v1.0"
    "author_name" = "Sanjeev Stephan Murmu"


}


$config = @{
    "restore_profile" = "no"
    "install_python"  = "no"
    "pip_installer"   = "yes"

}

#-------------------- Include <this-file> in the Below File ----------------
#. "$TERMINAL\setup_include.ps1"