"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   iterate list of items in a format [1] item-1, [2] item-2
    
.RESPONSE
   Here's an example of how you could iterate through a list and format the output as desired:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


def format_list(lst):
    for i, item in enumerate(lst):
        print("[{}] {}".format(i + 1, item))

my_list = ["item-1", "item-2", "item-3"]
format_list(my_list)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 
   The example list my_list is defined and passed as an argument to the format_list function. The output of the code would be:

   [1] item-1
   [2] item-2
   [3] item-3


.HOW_THE_SCRIPT_WORK

This code defines a function format_list that takes a list as an argument. Inside the function, we use a for loop to iterate through the items in the list. The enumerate function is used to get both the index and the item at each iteration. The index is then incremented by 1 to match the desired format of "[1]", "[2]", etc. Finally, we use the format method to print the index and item in the desired format.

.LINK
   -> https://chat.openai.com/chat/

"""
