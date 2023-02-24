"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   display specific data from dictionary 
    
.RESPONSE
   To display specific data from a dictionary in Python, you can use the key of the data you want to display to access its value.

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


my_dict = {
    "name": "John",
    "age": 30,
    "city": "New York"
}

# Accessing the value of a specific key
print("Name:", my_dict["name"])
print("Age:", my_dict["age"])


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
This will output:
Name: John
Age: 30


.HOW_THE_SCRIPT_WORK
In this example, we have a dictionary called my_dict with three key-value pairs: "name": "John", "age": 30, and "city": "New York". To display the value of a specific key, we can use the square bracket notation to access the value associated with that key. For example, to display the value associated with the "name" key, we use my_dict["name"].

.LINK
   -> https://chat.openai.com/chat/

.KEY_ERROR
If you try to access a key that does not exist in the dictionary, you will get a KeyError. To avoid this, you can use the get() method of the dictionary, which returns None if the key does not exist:   
print("Country:", my_dict.get("country"))
This will output: Country: None
If you want to provide a default value to be returned if the key does not exist, you can pass it as the second argument to the get() method:
print("Country:", my_dict.get("country", "Unknown"))
This will output: Country: Unknown

"""
