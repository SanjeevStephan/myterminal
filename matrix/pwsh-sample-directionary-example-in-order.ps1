<#  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    powershell  directionary example
    
.RESPONSE
    In PowerShell, a dictionary is implemented as a hashtable, which is a collection of key-value pairs.

.SYNTAX
   

.DESCRIPTION
 

.NOTE
 Note that hashtables in PowerShell are not ordered, so the order in which key-value pairs are added to the hashtable may not be preserved.
  If you need an ordered dictionary, you can use the [Ordered] attribute when creating the hashtable, like this:

    
.PARAMETER   


.INPUT

    
.CODE    
Here's an example of how to create a dictionary in PowerShell:
-------------------------------{ CODE_BELOW }-----------------------------#>

function orderedtable() {
#figlet "Ordered Hashtable"
./figlet-pass.bat "Ordered Hashtable"

# Create a new hashtable
$dictionary = [Ordered]@{}

# Add some key-value pairs to the hashtable

$dictionary.Add("orange", 1)
$dictionary.Add("banana", 2)
$dictionary.Add("apple", 3)
$dictionary.Add("mango",4)

# Access values in the dictionary by key
$value = $dictionary["banana"]
Write-Host "The value for 'banana' is $value"

# Loop through all key-value pairs in the dictionary
foreach ($key in $dictionary.Keys) {
    $value = $dictionary[$key]
    Write-Host "Key: $key, Value: $value"
}

$dictionary.GetEnumerator() | Sort-Object | Format-Table Name, Value -AutoSize

}

function unorderedTable() {
#figlet "UnOrdered Hashtable"
./figlet-pass.bat "UnOrdered Hashtable"
# Create a new hashtable
$dictionary = @{}
<#
$dictionary = @{
"Orange" = 1
"Apple"  = 2
"Mango"  = 3
"Banana" = 4

}
#>

# Add some key-value pairs to the hashtable

$dictionary.Add("orange", 1)
$dictionary.Add("banana", 2)
$dictionary.Add("apple", 3)
$dictionary.Add("mango",4)

# Access values in the dictionary by key
$value = $dictionary["banana"]
Write-Host "The value for 'banana' is $value"

# Loop through all key-value pairs in the dictionary
foreach ($key in $dictionary.Keys) {
    $value = $dictionary[$key]
    Write-Host "Key: $key, Value: $value"
}
$dictionary.GetEnumerator() | Format-Table Name, Value -AutoSize
}
 

# calling above functions
orderedtable
unorderedTable

<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, we start by creating a new hashtable using the @{} syntax. We then add some key-value pairs to the hashtable using the Add() method. We can access values in the hashtable by key using the $dictionary[key] syntax, and we can loop through all key-value pairs in the hashtable using a foreach loop.


.LINK
   -> https://chat.openai.com/chat/

#>
