"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   every time this script is run, first display the json from the file name "list_of_modules.json" and 
   then ask the user to enter "module name", "desc", "syntax" and then save it into the same json file 
   with out deleting the previous entry
    
.RESPONSE
   Sure, here's an updated example that will read from and write to the "list_of_modules.json" file as described:

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

# Check if the file exists, and create it if not
if not os.path.exists("list_of_modules.json"):
    with open("list_of_modules.json", "w") as file:
        file.write("{}")

# Read the existing JSON data from the file
with open("list_of_modules.json", "r") as file:
    data = json.load(file)

# Print the JSON data to the console
print("Existing JSON data:")
print(json.dumps(data, indent=4))

# Ask the user for module information
module_name = input("Enter the module name: ")
module_desc = input("Enter the module description: ")
module_syntax = input("Enter the module syntax: ")

# Add the new module information to the existing data
data[module_name] = {
    "desc": module_desc,
    "syntax": module_syntax
}

# Write the updated JSON data back to the file
with open("list_of_modules.json", "w") as file:
    json.dump(data, file, indent=4)

# Print a message indicating that the data was successfully saved
print("Module information saved to list_of_modules.json")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
   This code first reads the existing JSON data from the "list_of_modules.json" file using the json.load function. The data is stored in a dictionary called data.

The existing JSON data is then printed to the console using the json.dumps function, so the user can see the current contents of the file.

The code then prompts the user to enter a module name, description, and syntax using the input function.

The new module information is added to the existing data dictionary as a new entry with the key equal to the module_name input, and the corresponding "desc" and "syntax" values set to the user inputs.

The updated data dictionary is then written back to the "list_of_modules.json" file using the json.dump function.

Finally, a message is printed to the console indicating that the new module information was successfully saved to the file.

When the script is run again, it will read the updated JSON data from the file, display it to the user, and prompt for new module information to be added to the file again.

.LINK
   -> https://chat.openai.com/chat/

"""
