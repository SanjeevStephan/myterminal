#python-3.11.2-amd64.exe
$python_home = "$HOME\AppData\Local\Programs\Python\"


$python_insall_path = "D:\terminal\setup_tool"
$python_installer = "python-3.11.2-amd64.exe"
function installpython() {

    if (test-path $python_home) { 
    $py_version = python --version
    Write-Output "Python is Already Installed | Installed Version : $py_version" 
    return "true"
    }
    else {
    Write-Output "Python is not Installed"
    Write-Output "Installing $python_installer..."
    Write-Output "Please wait...Launching GUI Installer"
    cd $python_insall_path
    .\python-3.11.2-amd64.exe
    #Start-Sleep -Seconds 5

    return "false"
    }

}

function ifclosed($app_name) {
        
    while (Get-Process $app_name -ErrorAction SilentlyContinue) {
       Write-Host "Waiting for $app_name to close..."
       Start-Sleep -Seconds 1
    }

    Write-Host "$app_name is closed, continuing with the rest of the code."
    # Place the rest of your code here

}


function finalCheck() {

Write-Output "Python Installer is closed Now"

$choice = Read-Host "[INPUT] Have You Installed Python Correctly (y/n) : "
if ($choice -eq "y") 
{
    Write-Output "Checking the Python Version now"
    $py_version = python --version
    if (!($py_version -eq "")) { Write-Output "Python Is Installed Correctly -> Python Version is : $py_version"}
    else { Write-Output "Try Again" }


} else { Write-Output "Install Correctly and then restart the terminal setup" }

}

installpython

if (installpython -eq "true") { finalCheck } else {  ifclosed($python_installer)}
