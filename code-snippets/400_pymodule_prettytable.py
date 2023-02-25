"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""
import pass_message_to_func_show_figlet as figlet
from prettytable import PrettyTable

figlet.show_figlet("PrettyTable")

def simple_pretty_table_func():

    my_dict = {"apple": 2, "banana": 3, "orange": 1}

    
    print(my_dict)
    print("[Before] Using Pretty Table (raw-dictionary-data)")

    # create a new table
    table = PrettyTable()

    # add columns to the table
    table.add_column("Fruit", list(my_dict.keys()))
    table.add_column("Quantity", list(my_dict.values()))

    # print the table
    
    print(table)
    print("[After] Using Pretty Table (sorted-dictionary-data)")

simple_pretty_table_func()


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

"""
