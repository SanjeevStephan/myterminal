""" 
.SYNOPSIS
    
    display it in a formatted table using the prettytable module in Python

.DESCRIPTION
    
    This Python script . 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
   Note that in the code above, the field_names argument is used to specify the column headers for the table.
     The capitalize() method is used to capitalize the first letter of each operation name.
     You can update the data in the dictionary as needed to display the actual dates and scores. 

.
-------------------------------|| CODE_BELOW ||-----------------------------
"""
import json
import prettytable

# create the dictionary
"""
data = {
    "addition": {
        "date": "",
        "score": ""
    },
    "substraction": {
        "date": "",
        "score": ""
    },
    "division": {
        "date": "",
        "score": ""
    },
    "multiplication": {
        "date": "",
        "score": ""
    }
}
"""
filename = "saved_score.json"

# Read the existing JSON data from the file
with open(filename, "r") as file:
    data = json.load(file)

    # create the table and add the data
    table = prettytable.PrettyTable()
    table.field_names = ["Operation", "Date", "Score"]
    for operation, values in data.items():
        table.add_row([operation.capitalize(), values["date"], values["score"]])
    print(table)



    

# display the table



"""
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------
This will output the following table:
+----------------+------+-------+
|    Operation   | Date | Score |
+----------------+------+-------+
|    Addition    |      |       |
|  Substraction  |      |       |
|    Division    |      |       |
| Multiplication |      |       |
+----------------+------+-------+



-------------------------------|| HOW THE SCRIPT WORK ||--------------------




"""
