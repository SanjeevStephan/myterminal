




function menu() {
    echo "Displaying Execution Policy and Scope"

    echo "1. Get All ExecutionPolicy List"
    echo "2. Check ExecutionPolicy for LocalMachine"
    echo "3. Check and Enable ExecutionPolicy for LocalMachine"
    echo "4. Enable [RemoteSigned] ExecutionPolicy for LocalMachine"
    echo "5. Enable [RemoteSigned] ExecutionPolicy for All"
    echo "6. Disable All ExecutionPolicy on this Machine"
    echo "7. Quit"



    while ($true) {
    $choice = Read-Host "Enter Your Choice (1-7) : "

    executionPolicy($choice)
    }
}


function executionPolicy($choice){

    
    
    switch($choice) 
        {
            "1" { Get-ExecutionPolicy -list }
            "2" { $getscope_localmachine = Get-ExecutionPolicy -scope LocalMachine
                  echo "THe Execution Policy for the LocalMachines is set as [$getscope_localmachine]" }
            "3" { 
                    $check_status = Get-ExecutionPolicy -scope LocalMachine
                  if ($check_status -eq "Undefined") {
                                                         executionPolicy(4) 
                                                         echo "Enabling Execution Policy for LocalMachine"
                                                     }
                  else {echo "No Changes Made to the ExecutionPolicy on this Machine"}
                }
            "4" { Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine } 
            "5" { Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser 
                  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
                } 
            "6" { Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope LocalMachine 
                  Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser 

                  $check_status = Get-ExecutionPolicy -scope LocalMachine
                  if ($check_status -eq "Undefined") { 
                                                        echo "All Execution Disabled on this Machine"
                                                        Get-ExecutionPolicy -list
                                                     }
                  else {echo "No Changes Made to the ExecutionPolicy on this Machine"}

                } 
            "7" {exit}
            Default { echo "Invalid Input ! Pls try again with valid inputs(1-5)"}
        }


    

}

function autoenable() {
    if ($check_status -eq "Undefined") 
        { echo "Execution Policy is Not-Defined in the PowerShell"
          powershell.exe Set-ExecutionPolicy -ExecutionPolicy Undefined-Scope LocalMachine



        }
    else {echo "Execution Policy is Defined as $check_status in the PowerShell"}


}




function restoreProfile() {


    $profile_source = "$HOME\Documents\PowerShell"
    if (Test-Path $profile_source) { Write-Out "PowerShell Directory already exists"}
    else {
    Write-Output "No PowerShell Directory Found"

    $choice = Read-Host "Do you want to copy the backup profile to the $profi le_source(y/n)"
    if ($choice -eq "y") { Write-Output "Begin Copying Now" }
    elseif ($choice -eq "n") { Write-Output "Quiting Now" }
    }



}



function initialize() {
menu

}




initialize # Start Execution
