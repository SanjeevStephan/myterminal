"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
    display countdown upto 30 in a single line
    
.RESPONSE
    You can use a loop to display a countdown from 30 to 1, and use the end parameter of the print() function to print the numbers in a single line. 

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import time

for i in range(30, 0, -1):
    print(i, end=' ')
    time.sleep(0.5)  # Wait for 1 second

print("Go!")  # Print a message after the countdown

"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
    In this example, the range() function is used to generate a sequence of numbers from 30 to 1, with a step of -1. 
    The loop then iterates over this sequence, and each number is printed with a space character as the separator, using the end parameter of the print() function.
     The time.sleep() function is used to wait for 1 second between each number, to create a countdown effect. 
    Finally, after the loop finishes, a "Go!" message is printed.

.LINK
   -> https://chat.openai.com/chat/

"""
