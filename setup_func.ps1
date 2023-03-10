#-------------------- Include <this-file> in the Below  -------------------------------------------------- 
. .\setup_config.ps1
. .\setup_path.ps1
. .\setup_script.ps1
. .\setup_filesdir.ps1


$func_index = @"
[
    {"Name": "Display_Figlet($indexNum)",       "File": "setup_func.ps1",   "Description": "Display ASCII Figlet from textfile" },
    {"Name": "ReturnHome()",                    "File": "setup_func.ps1",   "Description": "Return the console back to D:\\terminal" },
    {"Name": "Overview_Status()",               "File": "setup_func.ps1",    "Description": "This Page that you are reading" },
    {"Name": "Log($text)",                      "File": "setup_func.ps1", "Description": "Helps to debug script code.pinpoint status"},
    {"Name": "Launch_Script($executable_title)","File": "setup_func.ps1", "Description": "Launch PowerShell,Python Scripts"},
    {"Name": "List_Executable_Config()",        "File": "setup_func.ps1", "Description": "List Executable Scripts and its Status"},
    {"Name": "List_Feature_Config()",           "File": "setup_func.ps1", "Description": "List Features of the Script in-use"},
    {"Name": "List_Setup_Script()",             "File": "setup_func.ps1", "Description": "List Script in-use"},
    {"Name": "List_Setup_Variables()",          "File": "setup_func.ps1", "Description": "List Variables in-use"},
    {"Name": "List_Setup_Functions()",          "File": "setup_func.ps1", "Description": "List Functions in-use"}
]
"@

<#--------------------------------------{ Function Index }------------------------------------------------ 
    Display_Figlet($indexNum) 
    ReturnHome()
    Overview_Status()           

    Log($text)

#>
function Display_Figlet($indexNum) { .$script["display_figlet"] $indexNum}
function ReturnHome() { cd $TERMINAL }
function Manage_Profile($action) { .$script["restore_profile"] $action }
function Overview_Script_Status() {
#Log("Checking PowerShell Profile Directory")
<#
    
    if (Test-Path $profile_source) { echo "PowerShell Directory already exists"}
    else {
    echo "No PowerShell Directory Found" }
#>
    # Launch_Script("restore_profile")


    List_Setup_Variables
    List_Executable_Config
    List_Feature_Config
    List_Setup_Script
    List_Setup_Files
    List_Setup_Directories
    List_Setup_Functions



}

function Launch_Script($executable_title) {  .$script["script_launcher"] $executable_title }

function List_Executable_Config() { $executable.GetEnumerator() | Sort-Object | Format-Table @{label="Executable Script Title"; expression={$_.Key}}, @{label="Allow Execution"; expression={$_.Value}} -AutoSize }
function List_Feature_Config() { $enable.GetEnumerator() | Sort-Object | Format-Table @{label="Script Feature"; expression={$_.Key}}, @{label="Status"; expression={$_.Value}} -AutoSize }
function List_Setup_Script() { $script.GetEnumerator() | Sort-Object | Format-Table @{label="Executable Script Title"; expression={$_.Key}}, @{label="Script Location"; expression={$_.Value}} -AutoSize  }
function List_Setup_Variables() { $variable.GetEnumerator() | Sort-Object | Format-Table @{label="Title"; expression={$_.Key}}, @{label="Description"; expression={$_.Value}} -AutoSize  }
function List_Setup_Directories() 
{
$jsonArray = ConvertFrom-Json $directories

$jsonArray | Sort-Object | Format-Table @{label="S.No"; expression={$jsonArray.IndexOf($_) + 1}},
                            @{label="Directory"; expression={$_.Name}},
                            @{label="Path"; expression={$_.Path}},
                            @{label="Description"; expression={$_.Description}} -AutoSize
}

function List_Setup_Files() { $files.GetEnumerator() | Sort-Object | Format-Table @{label="Setup Related Files"; expression={$_.Key}}, @{label="What does each files do ?"; expression={$_.Value}} -AutoSize  }
function List_Setup_Functions()
{
$jsonArray = ConvertFrom-Json $func_index

$jsonArray | Sort-Object | Format-Table @{label="S.No"; expression={$jsonArray.IndexOf($_) + 1}},
                            @{label="Function Title"; expression={$_.Name}},
                            @{label="Contain in File"; expression={$_.File}},
                            @{label="What Does it Do ?"; expression={$_.Description}} -AutoSize
}
function Log($text) { Write-Output "[LOG] $text "}





<#------------- Obsolete functions Below -------
function install_python() {


    $choice = $config["install_python"]

    if($choice -eq "yes") { Log(" Installing Python Now") 
                            .$script["install_python"]
                          }
    else { status("install_python","Python not installed") }


    # Launch_Script("install_python")

}
function pip_installer() {
#cd $pip_installer_path

    $choice = $config["pip_installer"]
    
    if($choice -eq "yes") { 
                        Log(" Installing Python Dependencies") 
                         Display_Figlet(1) #Figlet : pip_installer
                         .$script["pip_installer"]
     } else { status("pip_installer","Python Dependencies not installed") }

     

     if ((checkForYES("pip_installer","pip_installer","Python Dependencies not installed")) -eq "OK")
     { Write-Output "Script is Executed" 
       Log(" Installing Python Dependencies") 
       Display_Figlet(4) #Figlet : pip_installer
       .$script["pip_installer"]
     }

   
     

}
function status($keyname,$title) { Write-Output "$title Change 'yes' to  $keyname" }
function waitAndCheck() {

while (Get-Process "notepad" -ErrorAction SilentlyContinue) {
   Write-Host "Waiting for notepad to close..."
   Start-Sleep -Seconds 1
}

Write-Host "Notepad is closed, continuing with the rest of the code."
# Place the rest of your code here

}
function test() { .$script["script_launcher"] "test" }


function copy_files_dependencies() {
 $choice = $config["copy_files_dependencies"]
    
    if($choice -eq "yes") { Log(" Copying Files Dependencies") 
                                .$script["copy_files_dependencies"]
                              }
        else { status("copy_files_dependencies","Files Dependencies unable to copy to new location") }
}
#>