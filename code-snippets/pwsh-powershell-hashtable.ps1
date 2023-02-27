cls

figlet "PowerShell Hashtable"
Write-Output "[Comment] Pre-Defined Hasbtable"
Write-Output "[Comment] Create a new hashtable"

Write-Output "[Comment] Added some key-value pairs to the hashtable"

$dictionary = @{
"egoist"   = "believes in self-advancement"
"egotist"  = "talks about accomplishments"
"altruist" = "is interested in the welfare of the others"
"introvert"= "turns thoughts inwards"
"extrovert"= "turns thoughts outwards"
"ambivert" = "turns thoughts both inwards as well as outwards"
"misanthrope" = "hates people"
"misogynist"  = "hates women"
"misogamist"  = "hates marriage"
"ascetic"     = "does not pursue pleasures ot the flash"
 }


Write-Output "[Comment] Access values in the dictionary by key"
$value = $dictionary["ambivert"]
Write-Host "-> Meaning for 'ambivert' is $value"

Write-Output "[Comment] Loop through all key-value pairs in the dictionary"

foreach ($key in $dictionary.Keys) {
    $value = $dictionary[$key]
    Write-Host "-> Key: $key, Value: $value"
}

figlet "UnSorted HashTable"

$dictionary.GetEnumerator() | Format-Table Name, Value -AutoSize

figlet "A Sorted HashTable"

$dictionary.GetEnumerator() | Sort-Object | Format-Table @{label="Vocabulary"; expression={$_.Key}}, @{label="Meaning"; expression={$_.Value}} -AutoSize
