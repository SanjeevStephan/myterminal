"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
+----------------+------+-------+
|    Operation   | Date | Score |
+----------------+------+-------+
|    Addition    |      |       |
|  Substraction  |      |       |
|    Division    |      |       |
| Multiplication |      |       |
+----------------+------+-------+

    display only Division in python
    
.RESPONSE
    You can use the prettytable library to create the table and then filter out the rows you don't need. Here's some example code that will create the table and only display the row for "Division":

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


from prettytable import PrettyTable

# create the table
table = PrettyTable()
table.field_names = ["Operation", "Date", "Score"]
table.add_row(["Addition", "", ""])
table.add_row(["Substraction", "", ""])
table.add_row(["Division", "", ""])
table.add_row(["Multiplication", "", ""])

# filter out rows that aren't for "Division"
table = table.get_string(fields=["Operation", "Date", "Score"], 
                         sortby="Operation", 
                         reversesort=False, 
                         header=True, 
                         border=False, 
                         padding_width=1)

table = table.split("\n")
table = [row for row in table if "Division" in row]

# print the filtered table
print("\n".join(table))


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code first creates the table using the PrettyTable library, then filters out the rows that don't match "Division" using a list comprehension. Finally, it joins the remaining rows back into a string and prints it.

.LINK
   -> https://chat.openai.com/chat/

"""
