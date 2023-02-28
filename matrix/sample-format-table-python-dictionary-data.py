"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   Create a nice formated table with data from python dictionary 'thecmdlets = { "cmdlets" : "syntax","New-Item": "Create a new item"}
    
    +----------+----------+
   | cmdlets  | syntax   |
   +----------+----------+
   | New-Item | Create a new item |
   +----------+----------+

.RESPONSE
   Here's a Python code that generates the table using the thecmdlets dictionary:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


thecmdlets = { "cmdlets" : "syntax","New-Item": "Create a new item"}

def print_table(data):
    col_width = max(len(str(word)) for row in data for word in row) + 2
    for row in data:
        print("".join(str(word).ljust(col_width) for word in row))

table = [['cmdlets', 'syntax']]
for key, value in thecmdlets.items():
    if key != 'cmdlets':
        table.append([key, value])
        
print_table(table)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
   This code outputs the table:
   cmdlets   syntax   
   New-Item  Create a new item


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

"""
