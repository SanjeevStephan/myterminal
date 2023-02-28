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

import os
import json
import prettytable
import vocabulary_config

# fetch the dictionary

#filename = "dictionary/saved_vocabulary.json"
filename = vocabulary_config.filename

def showFiglet(message):
    os.system('python D:\\terminal\\py\\figlet.py --message "{}"'.format(message))

def showComment(type="Comment",message="No Message Passed"):
    print("[{}] {}".format(type,message))

def clearScreen():
    os.system("cls")

# Show Script add-update information
def showInstructions():
    instruction = {
    "To Add" : "Enter New Key-word that is not in the table below :",
    "To Update" : "Enter the Same Key-Word from the 'vocabulary' column:",
    "Also Note" : "The Key-word has to enterd in small-letters (must-do)",
    "exit"  : "Type 'exit' or 'q' to Terminate the Script"
    }   
  
    # create a new table
    table = prettytable.PrettyTable()

    # add columns to the table
    table.add_column("Action", list(instruction.keys()))
    table.add_column("Instructions", list(instruction.values()))

    # print the table
    print(table)


# Show All the column and row in the table
def full_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = ["Vocabulary", "Meaning", "Session"]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values["meaning"], values["session"]])
        # Sort the table by vocabulary word
        table.sortby = "Vocabulary"    
        print(table)


# Show Limited Imformation excluding some columns and row too
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


def single_row(keyword):
    #filename = "saved_vocabulary.json"

    # read the JSON file into a dictionary
    with open(filename, "r") as f:
        data = json.load(f)

    # key-word
    # print("->>> Keyword received [{}]".format(keyword))
    #keyword = "introvert"

    # extract the row you want as a list
    row = [data[keyword]["word"], data[keyword]["meaning"], data[keyword]["session"]]

    # create a new table with just that row
    table = prettytable.PrettyTable()
    table.field_names = ["Word", "Meaning", "Session"]
    table.add_row(row)

    print("[Updated] Keyword '{}' with the following contents".format(keyword))
    # display the table
    print(table)


#----------- {Uncomment below functions to run} ---------------

# showFiglet("getFullTable.py")
# showInstructions()
# full_table()
# compact_table()
# single_row("altruist")   
#  





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
