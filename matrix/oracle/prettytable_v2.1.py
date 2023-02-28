""" 
.SYNOPSIS
    
    display it in a formatted table using the prettytable module in Python

.DESCRIPTION
    
    This Python script fetch the json file in the same directory as the executable file and display the table from the json file. 
    
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
import saved_config
import json
import prettytable
from additonal_files import snippet_getFullTable as callTableFunctions
# fetch the dictionary

import argparse

filename = saved_config.filename
figlet_display_text = saved_config.update_table_title

def show_passed_argument(jsonfile):
    print("File name passsed : {}".format(jsonfile))
    return jsonfile

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="saved_help.json", help="Text message to display ")
    parser.add_argument("--figlet", type=str, default="figlet-text", help="Text message to display ")
    args = parser.parse_args()
    filename = show_passed_argument(jsonfile=args.json)
    figlet_display_text = show_passed_argument(jsonfile=args.figlet)



# python .\formatted_table.py --json .\test_data.json --figlet "PrettyTable"



read_full_table_column_header_1 = saved_config.read_full_table_column_header_1
read_full_table_column_header_2 = saved_config.read_full_table_column_header_2
read_full_table_column_header_3 = saved_config.read_full_table_column_header_3

read_full_table_add_row_value_1st = saved_config.read_full_table_add_row_value_1st
read_full_table_add_row_value_2nd = saved_config.read_full_table_add_row_value_2nd 
read_full_table_add_row_value_3rd = saved_config.read_full_table_add_row_value_3rd

read_full_table_sort_by = saved_config.read_full_table_sort_by

callTableFunctions.showFiglet(figlet_display_text)

def full_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = [read_full_table_column_header_1, read_full_table_column_header_2, read_full_table_column_header_3]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values[read_full_table_add_row_value_2nd], values[read_full_table_add_row_value_3rd]])
            table.sortby = saved_config.read_full_table_sort_by
        print(table)

# Show only necessary column what the mentioned in the 'table.field_names' & " , values["meaning"] "
def compact_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = [read_full_table_column_header_1, read_full_table_column_header_2]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values[read_full_table_add_row_value_2nd]])
            # Sort the table by vocabulary word
            table.sortby = saved_config.read_full_table_sort_by
        print(table)


def single_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = [read_full_table_column_header_1, read_full_table_column_header_2]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values[read_full_table_add_row_value_2nd]])
            # Sort the table by vocabulary word
            table.sortby = read_full_table_sort_by
        print(table)

full_table()    
#compact_table()
# display the table



"""
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------
This will output the following table:
                                                |___/

+--------------+-------------------------------------------------+---------+
|  Vocabulary  |                     Meaning                     | Session |
+--------------+-------------------------------------------------+---------+
|    Alter     |      in latin, the word for other is alter      |    2    |
|  Alteration  |                     a change                    |    2    |
| Altercation  |     a verbal and violent disput|disagreement    |    2    |
| Alternative  |                     a choice                    |    2    |
|   Altruism   | principle|moral practice of concern for welfare |    2    |
|   Altruist   |     people with strong desire to help other     |    2    |
|   Ambivert   |   have both introvert and extrovert tendencies  |    1    |
|   Ascetic    |      does not pursue pleasures of the flesh     |    1    |
| Cardiologist |  specialist of the heart and circulatory system |    4    |
|     Ego      |            latin word for 'i' is ego            |    2    |
+--------------+-------------------------------------------------+---------+

-------------------------------|| HOW THE SCRIPT WORK ||--------------------




"""
