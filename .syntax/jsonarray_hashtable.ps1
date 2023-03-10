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

