"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python code to install "not_installed" module from "list_of_modules.json" json file
    
.RESPONSE
   Here is an example Python code that reads the "list_of_modules.json" file, checks if each module is installed or not, and installs any modules that are not installed:

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
import subprocess

# Read the JSON data from the file
with open("list_of_modules.json", "r") as file:
    data = json.load(file)

# Print a table header
print("{:<20} {:<20}".format("Module Name", "Status"))    

# Iterate over each module in the data
for module_name in data:
    # Check if the module is installed
    if not importlib.util.find_spec(module_name):
        # The module is not installed, so install it
        print(f"Installing {module_name}...")
        subprocess.check_call(["pip", "install", module_name])

        # Update the status in the data dictionary
        data[module_name]["status"] = "installed"

# Write the updated JSON data back to the file
with open("list_of_modules.json", "w") as file:
    json.dump(data, file, indent=4)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
   PS D:\terminal\code_snippets> python .\install-modules-from-the-json-file-.py
Module Name          Status
Installing pyperclip...
Collecting pyperclip
  Downloading pyperclip-1.8.2.tar.gz (20 kB)
  Preparing metadata (setup.py) ... done
Installing collected packages: pyperclip
  DEPRECATION: pyperclip is being installed using the legacy 'setup.py install' method, because it does not have a 'pyproject.toml' and the 'wheel' package is not installed. pip 23.1 will enforce this behaviour change. A possible replacement is to enable the '--use-pep517' option. Discussion can be found at https://github.com/pypa/pip/issues/8559
  Running setup.py install for pyperclip ... done
Successfully installed pyperclip-1.8.2

[notice] A new release of pip is available: 23.0 -> 23.0.1
[notice] To update, run: python.exe -m pip install --upgrade pip
Installing numpy...
Collecting numpy
  Downloading numpy-1.24.2-cp311-cp311-win_amd64.whl (14.8 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 14.8/14.8 MB 6.2 MB/s eta 0:00:00
Installing collected packages: numpy
Successfully installed numpy-1.24.2

[notice] A new release of pip is available: 23.0 -> 23.0.1
[notice] To update, run: python.exe -m pip install --upgrade pip
PS D:\terminal\code_snippets>

-------------------------------{ OUTPUT ENDS }-----------------------------

.HOW_THE_SCRIPT_WORK

This code first reads the existing JSON data from the "list_of_modules.json" file using the json.load function, and stores it in the data dictionary.

It then iterates over each module in the data dictionary using a for loop, and checks if each module is installed using the importlib.util.find_spec function. If the module is not installed, the code installs it using the subprocess.check_call function to run the "pip install" command.

The code then updates the status in the data dictionary for each installed module, and writes the updated data back to the "list_of_modules.json" file using the json.dump function.

Note that this code assumes that the modules can be installed using the "pip install" command. If you need to install modules using a different package manager or installation method, you will need to modify the code accordingly.

.LINK
   -> https://chat.openai.com/chat/

"""
