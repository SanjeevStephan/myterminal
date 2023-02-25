"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   now append data= { "gender": "male"} to the data.json 
    
.RESPONSE
   You can use the json.load function to load the contents of a JSON file into a Python dictionary, then modify the dictionary as needed and write it back to the file using the json.dump function.

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json

# Loading the data from the JSON file
with open("data.json", "r") as file:
    data = json.load(file)
    print("[{}] existing data from file 'data.json' ".format("Show"))

# Modifying the data
data["name"] = "Sanjeev Stephan Murmu"
print("[{}] data appended to dictionary".format("Appended 'Sanjeev Stephan Murmu"))

# Saving the modified data to the JSON file
with open("data.json", "w") as file:
    json.dump(data, file, indent=4)
    #print(json.dump(data, file, indent=4))


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this example, the data is first loaded from the file using json.load. The dictionary is then modified by adding a new key-value pair for "gender". Finally, the modified dictionary is written back to the file using json.dump. Note that when writing to the file, the "w" mode is used to overwrite the file, rather than "a" which would append to the file.

.LINK
   -> https://chat.openai.com/chat/

"""
