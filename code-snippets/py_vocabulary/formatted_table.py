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

# fetch the dictionary

filename = "dictionary/saved_vocabulary.json"

def full_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = ["Vocabulary", "Meaning", "Session"]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values["meaning"], values["session"]])
            table.sortby = "Vocabulary"
        print(table)

# Show only necessary column what the mentioned in the 'table.field_names' & " , values["meaning"] "
def compact_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = ["Vocabulary", "Meaning"]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values["meaning"]])
            # Sort the table by vocabulary word
            table.sortby = "Vocabulary"
        print(table)


def single_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = ["Vocabulary", "Meaning"]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values["meaning"]])
            # Sort the table by vocabulary word
            table.sortby = "Vocabulary"
        print(table)

full_table()    
#compact_table()
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
