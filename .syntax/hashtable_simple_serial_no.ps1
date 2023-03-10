<#

Copy files to $HOME Directory

#>
$menu_list = @{
    1 = @{Name = "figlet.py"; Location = "D:\terminal\setup_pkg\figlet.py"}
    2 = @{Name = ".bash_history"; Location = "C:\Users\Sanju\.bash_history"}
}


function display_table() {

$menu_list.GetEnumerator() | Sort-Object | Format-Table @{label="Serial"; expression={$_.Key}}, @{label="Item Name"; expression={$_.Value.Name}}, @{label="Located At"; expression={$_.Value.Location}} -AutoSize

}

display_table