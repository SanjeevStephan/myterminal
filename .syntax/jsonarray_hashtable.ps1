# Clear the screen
clear

$json = @"
[
    {"Name": "Sanjeev", "Age": "26", "Profession": "Indian Civil Servant", "Residence": "Godda"},
    {"Name": "Anurag", "Age": "30", "Profession": "Banker", "Residence": "Ranchi"},
    {"Name": "Ashok", "Age": "28", "Profession": "Marketing Associate", "Residence": "Ranchi"},
    {"Name": "Santosh", "Age": "27", "Profession": "Businessman", "Residence": "Teldiha"}
]
"@

$jsonArray = ConvertFrom-Json $json

$jsonArray | Sort-Object | Format-Table @{label="Serial"; expression={$jsonArray.IndexOf($_) + 1}}, 
                            @{label="Person Name"; expression={$_.Name}}, 
                            @{label="Age"; expression={$_.Age}},
                            @{label="Profession"; expression={$_.Profession}},
                            @{label="Residence"; expression={$_.Residence}} -AutoSize

$username = $jsonArray | Where-Object { $_.Name -eq "Santosh" } | Select-Object -ExpandProperty Name
Write-Output "Fetching only the name: $username"

function how_to_fetch_values() {
$age = "27"
$profession = "Businessman"

$person = $jsonArray | Where-Object { $_.Age -eq $age -and $_.Profession -eq $profession } 

Write-Output "Fetching details for : $($person.Name)"
Write-Output "Age: $($person.Age)"
Write-Output "Profession: $($person.Profession)"

}


#  if there is a person named 'Santosh' in the JSON array and display their Residence,
function check_if_exits() {

    $person = $jsonArray | Where-Object { $_.Name -eq "Santosh" }
    if ($person) {
        Write-Output "$($person.Name)'s Residence is: $($person.Residence)"
    } else {
        Write-Output "$($person.Name) is not found in the array."
    }

}

function get_values_by_name() {

     $person = $jsonArray | Where-Object { $_.Name -eq "Santosh" }
     Write-Output "Showing details for : $($person.Name)"
}

# To get the name of the person at the fourth position
function get_name_by_positon() {
$position = 3
$name = $jsonArray[$position].Name
Write-Output "The name of the person at postion $position is: $name"

}

# To get the name of the person whose Age and Profession values match a certain criteria

function filter_values_by_certain_condition() {
$age = "27"
$profession = "Businessman"

$person = $jsonArray | Where-Object { $_.Age -eq $age -and $_.Profession -eq $profession } | Select-Object -ExpandProperty Name
Write-Output "The name of the person whose Age : $age & Profession : $profession is => $person"

}



how_to_fetch_values
check_if_exits
get_values_by_name
get_name_by_positon
filter_values_by_certain_condition