"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python code to skip the portion of the code if certain condition are full-filled and go back to the beginning of the 'while loop'
    
.RESPONSE
   In Python, you can use the continue statement to skip the current iteration of a loop and move on to the next iteration. Here's an example of how to use continue to skip a portion of the loop if a certain condition is met and go back to the beginning of the loop:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


while True:
    # Get some input from the user
    user_input = input("Enter a number or 'q' to quit: ")
    
    # If the user entered 'q', break out of the loop
    if user_input == 'q':
        break
    
    # If the user entered an invalid input, skip this iteration of the loop
    if not user_input.isdigit():
        print("Invalid input! Please enter a number.")
        continue
    
    # Convert the user's input to an integer
    number = int(user_input)
    print("You have ented a Valid Digit -> {}".format(user_input))
    
    # Do some processing with the number...
    
    # Go back to the beginning of the loop
    continue


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this example, if the user enters an invalid input (i.e., a non-numeric value), the continue statement is used to skip the remaining code in the loop and go back to the beginning of the loop to ask the user for input again.

.LINK
   -> https://chat.openai.com/chat/

"""
