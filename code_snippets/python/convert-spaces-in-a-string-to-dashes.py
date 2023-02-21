"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    python script to convert space provided as string into '-'
    
.RESPONSE
    Here's an example of how you could convert spaces in a string to dashes ("-") using Python

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


def replace_spaces_with_dashes(input_string):
    return input_string.replace(" ", "-")

my_string = "convert spaces in a string to dashes"
new_string = replace_spaces_with_dashes(my_string)
print(new_string)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
    This code defines a function replace_spaces_with_dashes that takes a string as an argument. Inside the function, we use the replace method of the string object to replace all occurrences of a space (" ") with a dash ("-"). The modified string is then returned from the function.

    An example string my_string is defined, and the function replace_spaces_with_dashes is called with my_string as an argument. The resulting modified string is stored in the variable new_string, and then printed to the console.

    This code will print "This-is-a-sample-string-with-spaces", which is the original string with all spaces replaced by dashes.

.LINK
   -> https://chat.openai.com/chat/

"""
