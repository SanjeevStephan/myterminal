""" 
.SYNOPSIS
    
    display it in a formatted table using the prettytable module in Python

.DESCRIPTION
    
    This Python script display prettytable module in a formatted table . 
    
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

import prettytable
import function_show_figlet_message as fig
fig.show_figlet("PrettyTable Custom Header")

# create the dictionary
data = {
    "Python": {
        "date": "12-Feb-2023",
        "score": "92"
    },
    "PowerShell": {
        "date": "15-Feb-2023",
        "score": "90"
    },
    "Bash-Script": {
        "date": "20-Feb-2023",
        "score": "85"
    },
    "Batch-Script": {
        "date": "22-Feb-2023",
        "score": "99"
    }
}

# create the table and add the data
table = prettytable.PrettyTable()
table.field_names = ["Script Operation", "Date of Operation", "Score of the Day"]
for operation, values in data.items():
    table.add_row([operation.capitalize(), values["date"], values["score"]])

# display the table
print(table)


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
