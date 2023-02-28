"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE
   To access and display the substraction date and score from the given JSON in Python, you can use the json module to parse the JSON string into a Python dictionary, and then access the values using dictionary keys.

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import json
import pass_message_to_func_show_figlet as figlet
figlet.show_figlet("Parse Json to Py Dictionary")

json_str = '''
{
    "addition": {
        "date": " ",
        "score": ""
    },
    "substraction": {
        "date": "23 February 2023",
        "score": "You got 2 out of 3 questions correct!"
    },
    "division": {
        "desc": "tooday",
        "syntax": "996"
    },
    "multiplication": {
        "date": "",
        "score": ""
    }
}
'''
print("[JSON] Displaying Raw JSON dictionary")
print(json_str)

# Parse the JSON string into a dictionary
data = json.loads(json_str)

print("[JSON] Accessing the values of the 'substraction' key from Json dictionary")
# Accessing the values of the "substraction" key
sub_date = data["substraction"]["date"]
sub_score = data["substraction"]["score"]

# Displaying the values
print("Substraction date:", sub_date)
print("Substraction score:", sub_score)



 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
This will output:
Substraction date: 23 February 2023
Substraction score: You got 2 out of 3 questions correct!


.HOW_THE_SCRIPT_WORK
In this example, we first define a string variable json_str containing the JSON data. We then use the json.loads() method to parse the JSON string into a Python dictionary called data.

We can then access the values of the "substraction" key by using the dictionary key notation data["substraction"], followed by the key name for the "date" and "score" values.

Finally, we display the values of sub_date and sub_score using the print() function.

.LINK
   -> https://chat.openai.com/chat/

"""
