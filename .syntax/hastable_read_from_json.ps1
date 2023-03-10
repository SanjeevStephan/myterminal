$json_filename = "people.json"


$json = Get-Content -Raw -Path $json_filename | ConvertFrom-Json

$json | Sort-Object | Format-Table @{label="Serial"; expression={$jsonArray.IndexOf($_) + 1}}, 
                            @{label="Person Name"; expression={$_.Name}}, 
                            @{label="Age"; expression={$_.Age}},
                            @{label="Profession"; expression={$_.Profession}},
                            @{label="Residence"; expression={$_.Residence}} -AutoSize

