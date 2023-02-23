"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   display the list of "module_name" from "list_of_modules.json" only in a table format with "status" showing if the "module_name" is install in the system or not and return "status" as "installed" or "not installed"
    
.RESPONSE
   Sure, here's an updated example that will read the "list_of_modules.json" file, display the module names and their installation status in a table, and return "installed" or "not installed" for each module:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
import importlib.util

# Read the existing JSON data from the file
with open("list_of_modules.json", "r") as file:
    data = json.load(file)

# Print a table header
print("{:<20} {:<20}".format("Module Name", "Status"))

def is_module_installed(module_name):
    # TODO: Replace this with your code to check if the module is installed
    # For example, you could use the `importlib.util.find_spec` function to check if the module is importable
    module = importlib.util.find_spec(module_name)
    if module is None:
        return False
    else:
        return True

# Iterate over each module in the data
for module_name in data:
    # Check if the module is installed in the system
    if is_module_installed(module_name):
        module_status = "installed"
    else:
        module_status = "not installed"

    # Print the module name and status in the table
    print("{:<20} {:<20}".format(module_name, module_status))

    # Add the status to the data dictionary
    data[module_name]["status"] = module_status

# Write the updated JSON data back to the file
with open("list_of_modules.json", "w") as file:
    json.dump(data, file, indent=4)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code first reads the existing JSON data from the "list_of_modules.json" file using the json.load function, and stores it in the data dictionary.

It then prints a table header with the column names "Module Name" and "Status".

The code then iterates over each module in the data dictionary using a for loop, and checks if each module is installed in the system using the is_module_installed function. This function currently always returns True, but you can replace it with your own code to check if the module is installed. For example, you could use the importlib.util.find_spec function to check if the module is importable.

For each module, the code determines the installation status as either "installed" or "not installed", and prints the module name and status in the table using the print function and string formatting.

Finally, the code adds the status to the data dictionary for each module, and writes the updated data back to the "list_of_modules.json" file using the json.dump function.

Note that the table format is achieved using the str.format method, and the {:20} syntax is used to left-align the module name and status in columns of width 20. You can adjust the column widths and formatting as desired.

.LINK
   -> https://chat.openai.com/chat/

"""
