#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_config.ps1
. .\setup_path.ps1
. .\setup_script.ps1

<#--------------------------------------{ Function Index }------------------------------------------------ 
    checkProfileDirectory()          Checks whether 'PowerShell' Directory exists or not 
    profileOperation($action)        Performs either backup or restore profiles files based on $action[backup|restore]



#>


function checkProfileDirectory() {
log("Checking PowerShell Profile Directory")

    
    if (Test-Path $profile_source) { echo "PowerShell Directory already exists"}
    else {
    echo "No PowerShell Directory Found"

    #$choice = Read-Host "Do you want to copy the restore files to the $profile_source(y/n)"
    $choice = $config["restore_profile"]
    if ($choice -eq "yes") { 
                        echo "Begin Copying Now" 
                        profileOperation("restore")
                        #launch_script("restore_profile.ps1")
                        }
    elseif ($choice -eq "no") { status("restore_profile","Failed to to restore Profile") }
    }

}

function profileOperation($action){
log("Performing $action Operation of Profile Directories")

    switch($action)
    {
        "restore" { .$script["restore_profile"] }
        "backup"  { .$script["backup_profile"] }
        Default { echo "Invalid Input "} 
    }

}

function install_python() {
    $choice = $config["install_python"]

    if($choice -eq "yes") { log(" Installing Python Now") 
                            .$script["install_python"]
                          }
    else { status("install_python","Python not installed") }
}

function pip_installer() {
cd $pip_installer_path

    $choice = $config["pip_installer"]
    
    if($choice -eq "yes") { log(" Installing Python Dependencies") 
                                .$script["pip_installer"]
                              }
        else { status("pip_installer","Python Dependencies not installed") }
}

function log($text) { Write-Output "-------------------[LOG] $text "}
function status($keyname,$title) { Write-Output "$title Change 'yes' to  $keyname" }


function waitAndCheck() {

while (Get-Process "notepad" -ErrorAction SilentlyContinue) {
   Write-Host "Waiting for notepad to close..."
   Start-Sleep -Seconds 1
}

Write-Host "Notepad is closed, continuing with the rest of the code."
# Place the rest of your code here

}
function back2home() { cd $TERMINAL }