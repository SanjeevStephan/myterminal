
   param(
       [Parameter(Mandatory=$true)]
       [string]$executable_config_title
   )
#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_config.ps1
. .\setup_path.ps1
. .\setup_script.ps1
. .\setup_func.ps1
$debug = "true"

$script_filename = "setup_script.ps1"
$config_filename = "setup_config.ps1"

function Check-Config($executable_config_title) 
{
    $choice = $executable[$executable_config_title]

    if($choice -eq "yes") { return "true" }  else { return "false" }

}
function Validate-Script($script_name) 
{  

if ($script.ContainsKey($script_name)) {
    # Write-Host "'$script_name' script is available in the '$script_filename' hashtable."
    return "true"
} else {
    # Write-Host "'$script_name' script is not available in the '$script_filename' hashtable."
    return "false"
}


}
function Execute-Script($script_name) { 

$script_path = $script[$script_name] 

    if (Test-Path $script_path) { # If The file exists, so execute this block
         Display_Figlet(6) # Figlet : script_executed
#----------------------{ Executing Script Here }-------------------------------
        .$script[$script_name]   # <= On this line | script is being executed 
    } else { # The file does not exist,  so execute this block
        Write-Host "[ERROR] The $script_name script does not exist at: $script_path"
        return "false"
    }
}


function initialize() {

# executable_config_title and script_name are the same in the hastables
 $config_status = Check-Config($executable_config_title)
 $validate_staus = Validate-Script($executable_config_title) 
 #$execute_status = Execute-Script($executable_config_title)

 #----------------------{ Checking-Validating-Executing Script }-------------------------------
 if($config_status -eq "true") {

    if($validate_staus -eq "true") {

        # Write-Output "Executing $executable_config_title "
        Execute-Script($executable_config_title)

    } else { Write-Output "[ERROR] $executable_config_title doesnot exists in the '$script_filename' hastetable."}

 } else { Write-Output "[DISABLED] Execution of script { $executable_config_title } | Change Value to { yes } in the '$config_filename' "}

 #----------------------{ Execution Ended }----------------------------------------------------

 #----------------------{ Task Details }----------------------------------------------


 $enable_status = $enable["show_task_details"]

if ($enable_status -eq "enable") {

    $config_value    = $executable[$executable_config_title]
    $script_path     = $script[$executable_config_title]
    $script_filename = Split-Path $script_path -Leaf # Use the Split-Path cmdlet to extract the file name from the path

    echo "Config Key : $executable_config_title | Config Value : $config_value"
    echo "Script Name : $script_filename | Script Path : $script_path"

    echo "Task 1 Completed -> Checking Config_name [$executable_config_title] | Status [$config_status]!"
    echo "Task 2 Completed -> Validating Script [$executable_config_title] | Status [$validate_staus]"
    echo "Task 3 Completed -> Executing Script [$executable_config_title] | Status [$execute_status]"
} else { echo "'Enable' the 'show_task_details' feature in the config file"} 

}


initialize

#return $debug

