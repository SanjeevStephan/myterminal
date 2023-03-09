
$python_home = "test-path $HOME\AppData\Local\Programs\Python\"
$python_installer = "python-3.11.2-amd64.exe"
function installpython() {

    if (test-path $python_home) { Write-Output "Python is Already Installed" }
    else {
    Write-Output "Python is not Installed"
    Write-Output "Installing $python_installer..."
    Write-Output "Please wait...Launching GUI Installer"
    cd D:\terminal\tools
    .\python-3.11.2-amd64.exe
    #Start-Sleep -Seconds 5
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

installpython
ifclosed($python_installer)
Write-Output "Python Installer is closed Now"



#python-3.11.2-amd64.exe