"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python if else statement of check if no input is entered and execute another if then else statement based on that
    
.RESPONSE
   You can use the input() function to read input from the user, and then use an if statement to check whether the input is empty (i.e., the user did not enter anything). If the input is empty, you can execute another set of if...else statements to perform a different task. Here is an example code snippet:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


# Read input from user
user_input = input("Enter a value: ")

# Check if input is empty
if user_input == "":
    # If input is empty, execute this block
    print("You didn't enter anything!")
    
    # perform other tasks based on your requirements 
else:
    # If input is not empty, execute this block
    if user_input == "yes":
        print("You entered 'yes'!")
    else:
        name = "Stephan"
        print(f"Let assum you're, {name}!")
        print("You entered something else!")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this example, if the user enters nothing, the program will print "You didn't enter anything!" and then execute any additional tasks based on your requirements. If the user enters a value, the program will check whether the value is "yes" or something else and print a corresponding message.

.LINK
   -> https://chat.openai.com/chat/

"""
