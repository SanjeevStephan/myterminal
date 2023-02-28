"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    To get the JSON from the file "dictionary/saved_vocabulary.json", you can use the json library in Python.
    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json

filename = "dictionary/saved_vocabulary.json"

with open(filename, "r") as f:
    data = json.load(f)

# now you can use the 'data' variable as a regular Python dictionary
print(data)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code opens the file "dictionary/saved_vocabulary.json", reads its contents using the json.load() method, and stores the resulting dictionary in the data variable. You can then use the data variable as a regular Python dictionary.

.LINK
   -> https://chat.openai.com/chat/

"""
