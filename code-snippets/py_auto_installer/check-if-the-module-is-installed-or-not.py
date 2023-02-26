"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python code to check if the module is installed or not 
    
.RESPONSE
   Here is an example Python code that checks if a given module is installed or not:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE
   You can call this function with the name of the module you want to check, for example:

   if is_module_installed("numpy"):
    print("NumPy is installed")
   else:
    print("NumPy is not installed")
    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import importlib.util

def is_module_installed(module_name):
    spec = importlib.util.find_spec(module_name)
    if spec is None:
        print("This module [{} is NOT_INSTALLED on your system]".format(module_name))
        return False
    else:
        print("This module [{} is INSTALLED on your system]".format(module_name))
        return True

name_of_the_module= input("Enter the Name of the Module you want to check :")
print("You have Entered [{}]".format(name_of_the_module))

# check if the module is installed or not by calling this functions()
is_module_installed(name_of_the_module)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code defines a function is_module_installed that takes a module name as input, and returns a boolean value indicating if the module is installed or not.

The function uses the importlib.util.find_spec function to try to locate the module. If the find_spec function returns None, it means that the module is not installed, and the function returns False. If the find_spec function returns a ModuleSpec object, it means that the module is installed, and the function returns True.

.LINK
   -> https://chat.openai.com/chat/

"""
