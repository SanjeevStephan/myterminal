<#

.DESCRIPTION
    Display All Available Figlet and show its contents depending upon the argument received

.EXAMPLES
    -> .\display_figlet.ps1 100
    
      S.No Item Name        Located At
      ---- ---------        ----------
       1 terminal_logo    D:\terminal\setup_figlet\terminal_logo
       2 home_profile     D:\terminal\setup_figlet\home_profile
       3 home_profile_one D:\terminal\setup_figlet\home_profile_one

    -> .\display_figlet.ps1 101

         _____                   _             _   ____       _
        |_   _|__ _ __ _ __ ___ (_)_ __   __ _| | / ___|  ___| |_ _   _ _ __
          | |/ _ \ '__| '_ ` _ \| | '_ \ / _` | | \___ \ / _ \ __| | | | '_ \
          | |  __/ |  | | | | | | | | | | (_| | |  ___) |  __/ |_| |_| | |_) |
          |_|\___|_|  |_| |_| |_|_|_| |_|\__,_|_| |____/ \___|\__|\__,_| .__/
                                                                       |_|

         _   _                        ____             __ _ _
        | | | | ___  _ __ ___   ___  |  _ \ _ __ ___  / _(_) | ___
        | |_| |/ _ \| '_ ` _ \ / _ \ | |_) | '__/ _ \| |_| | |/ _ \
        |  _  | (_) | | | | | |  __/ |  __/| | | (_) |  _| | |  __/
        |_| |_|\___/|_| |_| |_|\___| |_|   |_|  \___/|_| |_|_|\___|

      -> .\display_figlet.ps1 1 #will display figlet content based on the S.No from the JSONArray    

#>

   param(
       [Parameter(Mandatory=$true)]
       [int]$index
   )

   # $debug = "Received index number [$index]"
  
  
$json = @"
[
    {"Name": "terminal_logo",    "Location": "D:\\terminal\\setup_figlet\\terminal_logo"},
    {"Name": "home_profile",     "Location": "D:\\terminal\\setup_figlet\\home_profile"},
    {"Name": "python_installer", "Location": "D:\\terminal\\setup_figlet\\python_installer"},
    {"Name": "pip_installer",    "Location": "D:\\terminal\\setup_figlet\\pip_installer"},
    {"Name": "copying_dependencies","Location": "D:\\terminal\\setup_figlet\\copying_dependencies"},
    {"Name": "script_executed"   ,"Location": "D:\\terminal\\setup_figlet\\script_executed"},

]
"@

$jsonArray = ConvertFrom-Json $json

function show_one_figlet($itemNum) {
$figlet_item_num = $itemNum - 1
#Write-Output $jsonArray.Location
cat $jsonArray.Location[$figlet_item_num]
}

function display_available_figlets_items() {

$jsonArray | Sort-Object | Format-Table @{label="S.No"; expression={$jsonArray.IndexOf($_) + 1}}, 
                            @{label="Item Name"; expression={$_.Name}}, 
                            @{label="Located At"; expression={$_.Location}}-AutoSize
}

function show_all_figlets_content() {

$files = ConvertFrom-Json $json


foreach ($file in $files) {
$location = $file.Location

    $success = Test-Path $location
    if ($success) {
       cat $location
    } else {
        Write-Host "Failed to display $name. No Such file [$location]." }

}
<#
foreach ($file in $files) {
    $name = $file.Name
    $location = $file.Location
    $newLocation = $file.NewLocation

    Copy-Item $location $newLocation -Force
    $success = Test-Path (Join-Path $newLocation $name)

    if ($success) {
        Write-Host "[COPIED] $name copied successfully to [$newLocation]."
    } else {
        Write-Host "Failed to copy $name to [$newLocation]." }
}
#>


}

function decisionMaker($indexNum) {

    # Write-Output "Executing Other Function Blocks" 
    if($indexNum -eq 100) { display_available_figlets_items }
    elseif ($indexNum -eq 101) { show_all_figlets_content } 
    elseif ($indexNum -eq "") { echo "No Index Number Received" } 
    else { return show_one_figlet($indexNum) }

}

return decisionMaker($index) #important to return objects 