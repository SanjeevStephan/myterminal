"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   get single row in prettytable from json file filename = "dictionary/saved_vocabulary.json"
    
.RESPONSE
   To display a single row from a table generated from a JSON file using prettytable, 
   you can read the file into a Python dictionary, extract the row you want as a list, 
   and then create a new table with just that row and display it. 

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here's an example code snippet that shows how to do this:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
from prettytable import PrettyTable

filename = "dictionary/saved_vocabulary.json"

# read the JSON file into a dictionary
with open(filename, "r") as f:
    data = json.load(f)

# key-word
keyword = "introvert"

# extract the row you want as a list
row = [data[keyword]["word"], data[keyword]["meaning"], data[keyword]["session"]]

# create a new table with just that row
table = PrettyTable()
table.field_names = ["Word", "Meaning", "Session"]
table.add_row(row)

# display the table
print(table)
 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK


In this example, the code reads the JSON file into a dictionary called data.
It then extracts the row corresponding to the word "egoist" as a list of values, and uses this to create a new PrettyTable with the appropriate column names.
Finally, it displays the table using the print function.

.LINK
   -> https://chat.openai.com/chat/

"""
