"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   delete python files with 'test' occurrences in the (.py) files 
    
.RESPONSE
   Sure, here's the Python code to delete all files with a .py extension in the current directory that contain the word 'test' in their name:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import os


for filename in os.listdir():
    if filename.endswith('.py') and 'test' in filename:
        os.remove(filename)
        print(f"Deleted {filename}")



 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this code, we again use the os.listdir() method to get a list of all files in the current directory. We then use a for loop to iterate over the list of filenames.

For each filename that ends with .py and contains the word 'test', we use the os.remove() method to delete the file and print a message to confirm the deletion.

.LINK
   -> https://chat.openai.com/chat/

"""
