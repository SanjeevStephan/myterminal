echo "Displaying Execution Policy and Scope"


$check_status = Get-ExecutionPolicy -scope LocalMachine


function executionPolicyMenu(){

    echo "1. Get All ExecutionPolicy List"
    echo "2. Check ExecutionPolicy for LocalMachine"
    echo "3. Enable [RemoteSigned] ExecutionPolicy for LocalMachine"
    echo "4. Enable [RemoteSigned] ExecutionPolicy for CurrentUser"
    echo "5. Disable All ExecutionPolicy on this Machine"
    echo "6. Quit"

    while ($true) {

    $choice = Read-Host "Enter Your Choice (1-6) : "


    switch($choice) 
        {
            "1" { Get-ExecutionPolicy -list }
            "2" { $output = Get-ExecutionPolicy -scope LocalMachine 
                  echo "THe Execution Policy for the LocalMachines is set as [$output]"  
                }n
            "3" { Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine } 
            "5" { Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope LocalMachine 
                  Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser 
                } 
            "6" {exit}
            Default { echo "Invalid Input ! Pls try again with valid inputs(1-5)"}
        }


    }

}

function autoenable() {
    if ($check_status -eq "Undefined") 
        { echo "Execution Policy is Not-Defined in the PowerShell"
          powershell.exe Set-ExecutionPolicy -ExecutionPolicy Undefined-Scope LocalMachine



        }
    else {echo "Execution Policy is Defined as $check_status in the PowerShell"}


}

function initialize() {
menu

}



initialize # Start Execution