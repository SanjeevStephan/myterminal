<#

Hastable to Display Persons

#>

function persons() {

$menu_list = @{
    1 = @{Name = "Sanjeev"; Age = "26"; Profession = "Indiam Civil Servant"; Residence = "Godda"}
    2 = @{Name = "Anurag"; Age = "30" ; Profession = "Banker"; Residence = "Ranchi"}
    3 = @{Name = "Ashok"; Age = "28"; Profession = "Marketing Associate"; Residence = "Ranchi"}
    4 = @{Name = "Santosh"; Age = "27"; Profession = "Businessman"; Residence = "Teldiha"}
}

$menu_list.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, 
                            @{label="Person Name"; expression={$_.Value.Name}}, 
                            @{label="Age"; expression={$_.Value.Age}},
                            @{label="Profession"; expression={$_.Value.Profession}},
                            @{label="Residence"; expression={$_.Value.Residence}} -AutoSize

}

persons