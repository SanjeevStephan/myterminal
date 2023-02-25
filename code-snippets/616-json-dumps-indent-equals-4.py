"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   save json in a readable formatted
    
.RESPONSE
   You can use the indent argument in the json.dump function to specify the number of spaces to use for indentation in the JSON file.
   This will make the file more readable for humans

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json

# Sample Python Dictionary
data = {
    "name": "John Doe",
    "age": 30,
    "city": "New York"
}

# Parse Python Dictionary to JSON with indent=4 and display
data_to_be_saved = json.dumps(data, indent=4)
print(data_to_be_saved)


"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this example, the indent argument is set to 4, so each level of the JSON file will be indented by 4 spaces. This makes the file more readable and easier to understand.

When reading the file back in, the format of the file will not affect the contents of the dictionary, so you can still access the data in the same way as in the previous example.

.LINK
   -> https://chat.openai.com/chat/

"""
