"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    use sort_keys parameter in dumps python to sort the json stored in the file
    
.RESPONSE
    Sure, I can help you with that! In order to sort the keys in a JSON object before storing it in a file using the json.dumps() method, you can use the sort_keys parameter. 

.SYNTAX
   

.DESCRIPTION
 

.NOTE
Note that the sort_keys parameter only affects the order of the keys in the JSON output, not the order in which they were defined in the original Python dictionary.
    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import json

my_dict = {
    "name": "John",
    "age": 30,
    "city": "New York"
}

# Sort the keys alphabetically before dumping to a file
with open("my_file.json", "w") as f:
    json.dump(my_dict, f, indent=4, sort_keys=True)



 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
If you open the "my_file.json" file in a text editor, you should see the contents sorted by key:

{
    "age": 30,
    "city": "New York",
    "name": "John"
}



.HOW_THE_SCRIPT_WORK
In this example, we define a Python dictionary my_dict with three key-value pairs. We then open a file named "my_file.json" in write mode using the with statement, and we use the json.dump() method to write the contents of my_dict to the file in JSON format. We also pass the indent parameter to pretty-print the JSON with four spaces per indent level, and we set the sort_keys parameter to True to sort the keys alphabetically before writing them to the file.

.LINK
   -> https://chat.openai.com/chat/

"""
