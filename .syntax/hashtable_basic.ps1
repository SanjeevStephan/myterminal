<#

Hastable

#>
$menu_list = @{
    "figlet.py" = "D:\terminal\setup_pkg"
    "some_other_file.txt"= "C:\files"
}


function display_menu() {


$menu_list.GetEnumerator() | Format-Table @{label="Item Name"; expression={$_.Key}}, @{label="Located At"; expression={$_.Value}} -AutoSize

}


display_menu