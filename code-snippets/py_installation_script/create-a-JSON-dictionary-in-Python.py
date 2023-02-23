"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   help me write a json dictionary in python with "module name" its "desc", "syntax" 
    
.RESPONSE
   Certainly! Here's an example of how you could create a JSON dictionary in Python with a "module name", "desc", and "syntax" for each entry:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
import os

# Define the JSON data
data = {
    "module1": {
        "desc": "This is the description for module 1.",
        "syntax": "module1(parameter1, parameter2)"
    },
    "module2": {
        "desc": "This is the description for module 2.",
        "syntax": "module2(parameter1)"
    },
    "module3": {
        "desc": "This is the description for module 3.",
        "syntax": "module3()"
    }
}

# Convert the data to a JSON string
json_data = json.dumps(data, indent=4)

filename = "sample_json_data.json"
# Save the JSON to the file 
#json.dump(json_data, filename, indent=4)

# Print the JSON string to the console
print(json_data)
#os.system("rm {}".format(filename))
#print("File {} Cleared Successfully".format(filename))


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
   This code will output a JSON-formatted string that looks something like this:

   {
    "module1": {
        "desc": "This is the description for module 1.",
        "syntax": "module1(parameter1, parameter2)"
    },
    "module2": {
        "desc": "This is the description for module 2.",
        "syntax": "module2(parameter1)"
    },
    "module3": {
        "desc": "This is the description for module 3.",
        "syntax": "module3()"
    }
}

   Note that you can customize the keys and values in the data dictionary to match your specific needs.

.HOW_THE_SCRIPT_WORK

his code defines a dictionary called data with three entries, each containing a "desc" and "syntax" value for a different "module name". In this example, the modules are named "module1", "module2", and "module3".

The json module is imported, which provides functions for working with JSON data.

The json.dumps function is called to convert the data dictionary to a JSON-formatted string. The indent argument is set to 4 to add indentation to the output, making it easier to read.

The resulting JSON string is stored in the variable json_data, and then printed to the console using the print function.

.LINK
   -> https://chat.openai.com/chat/

"""
