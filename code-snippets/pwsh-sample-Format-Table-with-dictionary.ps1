<#
.SYNOPSIS
    
    powershell example of Format-Table with dictionary data

.DESCRIPTION
    
    This PowerShell script uses the Format-Table cmdlet with dictionary data in PowerShell: 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>
# Suppose you have a dictionary object with key-value pairs representing the names and ages of some individuals:
.\figlet-pass.bat "PowerShell Format-Table"

$people = @{
    "Alice" = 32
    "Bob" = 28
    "Charlie" = 45
    "Dave" = 23
}
# You can use the Format-Table cmdlet to display this data in a table format with headers for the Name and Age columns:
$people.GetEnumerator() | Format-Table Name, Value -AutoSize

<#
This will retrieve the key-value pairs from the dictionary using the GetEnumerator() method and format the output in a table that includes columns for the Name and Value properties using the Format-Table cmdlet.
The -AutoSize parameter automatically adjusts the column widths based on the data.
#>

<#
You can also customize the column headers using the @{label='header'; expression={}} syntax.
For example, to display the Name and Age columns with custom headers, you can use the following command:
#>
$people.GetEnumerator() | Sort-Object | Format-Table @{label="Name"; expression={$_.Key}}, @{label="Age"; expression={$_.Value}} -AutoSize

<# 
This will format the output in a table with columns labeled 'Name' and 'Age', where the 'Name' column displays the dictionary keys (i.e., the names) and
 the 'Age' column displays the dictionary values (i.e., the ages).
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------




#>
