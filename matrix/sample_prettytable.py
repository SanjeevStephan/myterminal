"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python example to display dictionary using prettytable
    
.RESPONSE
   Sure, here's an example of how to use the prettytable module in Python to display a dictionary in a tabular format:

.SYNTAX
   

.DESCRIPTION
 

.NOTE
You can modify this code to work with your own dictionary by changing the keys and values in the dictionary, and adjusting the column names and formatting as needed.
    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


from prettytable import PrettyTable

my_dict = {"apple": 2, "banana": 3, "orange": 1}

# create a new table
table = PrettyTable()

# add columns to the table
table.add_column("Fruit", list(my_dict.keys()))
table.add_column("Quantity", list(my_dict.values()))

# print the table
print(table)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
This code creates a dictionary my_dict with three key-value pairs, then uses the PrettyTable module to create a new table. The code then adds two columns to the table, one for the fruit names and one for the quantity of each fruit. Finally, the code prints the table.

.LINK
   -> https://chat.openai.com/chat/

"""
