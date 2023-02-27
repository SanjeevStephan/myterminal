"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   ask the user to enter any number and perform action based on the input received
    
.RESPONSE
   Here's an example of how you could ask the user to enter a number and perform different actions based on the input:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


def perform_action(num):
    if num == 1:
        print("You selected option 1")
    elif num == 2:
        print("You selected option 2")
    elif num == 3:
        print("You selected option 3")
    else:
        print("Invalid option selected")

user_input = int(input("Enter a number (1, 2, or 3): "))
perform_action(user_input)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code defines a function perform_action that takes an integer as an argument. Inside the function, we use an if statement to check the value of the argument and perform different actions based on the value. If the value is 1, 2, or 3, a message is printed indicating the corresponding option that was selected. If the value is not 1, 2, or 3, a message is printed indicating that an invalid option was selected.

The user is prompted to enter a number using the input function. The input is then converted to an integer using the int function and stored in the variable user_input. Finally, the user_input is passed as an argument to the perform_action function.

This code will print either "You selected option 1", "You selected option 2", "You selected option 3", or "Invalid option selected", depending on the input entered by the user.

.LINK
   -> https://chat.openai.com/chat/

"""
