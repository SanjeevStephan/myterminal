<#

Copy files to NewDirectory

#>
$home_location = $HOME

$json = @"
[
    {"Name": "figlet.py",  "Location": "D:\\terminal\\setup_pkg\\figlet.py", "NewLocation" : "C:\\Users\\Sanju"},
    {"Name": "nano.exe",   "Location": "D:\\terminal\\setup_tool\\nano\\nano.exe", "NewLocation" : "C:\\Program Files\\PowerShell\\7"},
]
"@

$jsonArray = ConvertFrom-Json $json

function justPath() {

Write-Output $jsonArray.Location
Write-Output $jsonArray.Location[1]
}

function display_menu() {



$jsonArray | Sort-Object | Format-Table @{label="S.No"; expression={$jsonArray.IndexOf($_) + 1}}, 
                            @{label="Item Name"; expression={$_.Name}}, 
                            @{label="Located At"; expression={$_.Location}},
                            @{label="Move To This Location"; expression={$_.NewLocation}} -AutoSize

}

function file_mover() {



$files = ConvertFrom-Json $json

foreach ($file in $files) {
    $name = $file.Name
    $location = $file.Location
    $newLocation = $file.NewLocation

    Copy-Item $location $newLocation -Force
    $success = Test-Path (Join-Path $newLocation $name)

    if ($success) {
        Write-Host "[COPIED] $name copied successfully to [$newLocation]."
    } else {
        Write-Host "Failed to copy $name to [$newLocation]."
    }
}



}


display_menu
file_mover
