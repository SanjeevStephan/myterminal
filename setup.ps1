#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_include.ps1
#----------------------------------------------------------------------------------------------------------   
log('Launching ' + $variable["script_name"])
log('Script Developed By ' + $variable["author_name"])

function initialize() {

checkProfileDirectory
install_python
pip_installer

back2home
}

log("initializing script")
initialize # Start Execution
