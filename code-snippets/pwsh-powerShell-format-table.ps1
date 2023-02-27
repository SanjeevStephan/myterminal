<#
.SYNOPSIS
    
	prettytable like module powershell to format json 

.DESCRIPTION
    
    In PowerShell, you can use the ConvertFrom-Json cmdlet to convert JSON data into PowerShell objects. Once you have converted the JSON data into objects, you can use the Format-Table cmdlet to format the data in a tabular format similar to the prettytable module in Python.
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
#>

$jsonData = '[
  {
    "Name": "John",
    "Age": 30,
    "City": "New York"
  },
  {
    "Name": "Jane",
    "Age": 25,
    "City": "Los Angeles"
  }
]'

$objects = ConvertFrom-Json $jsonData
$objects | Format-Table Name, Age, City


<# 
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

In this example, we start by defining a JSON string that contains an array of two objects. We then use the ConvertFrom-Json cmdlet to convert the JSON data into PowerShell objects and store them in the $objects variable. Finally, we use the Format-Table cmdlet to display the objects in a tabular format with columns for Name, Age, and City. You can customize the output further by adding more columns or adjusting the formatting options of the Format-Table cmdlet.


#>
