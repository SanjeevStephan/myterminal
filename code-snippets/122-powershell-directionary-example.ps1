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


# Create a new hashtable
$dictionary = @{}

# Add some key-value pairs to the hashtable
$dictionary.Add("apple", 1)
$dictionary.Add("banana", 2)
$dictionary.Add("orange", 3)

# Access values in the dictionary by key
$value = $dictionary["banana"]
Write-Host "The value for 'banana' is $value"

# Loop through all key-value pairs in the dictionary
foreach ($key in $dictionary.Keys) {
    $value = $dictionary[$key]
    Write-Host "Key: $key, Value: $value"
}


 
<#-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, we start by creating a new hashtable using the @{} syntax. We then add some key-value pairs to the hashtable using the Add() method. We can access values in the hashtable by key using the $dictionary[key] syntax, and we can loop through all key-value pairs in the hashtable using a foreach loop.


.LINK
   -> https://chat.openai.com/chat/

#>
