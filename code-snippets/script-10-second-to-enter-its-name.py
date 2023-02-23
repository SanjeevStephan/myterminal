"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   give it 10 second to enter its name or else name him sam
    
.RESPONSE
   You can use the time module to set a timer of 10 seconds for the user to enter their name, and then use an if statement to check whether the name is empty. If the name is empty, you can set a default value of "Sam" for the name

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import time

print("Please enter your name within 10 seconds:")
name = input()

start_time = time.time()  # Get the current time
while (time.time() - start_time) < 10:
    if name:
        break
    name = input()

if not name:
    name = "Sam"

print(f"Hello, {name}!")
#print("you have entered {}")



 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this example, the program first prompts the user to enter their name and uses the input() function to read their input. Then, the program gets the current time using the time.time() function and enters a loop that continues until 10 seconds have elapsed. Within the loop, the program checks whether the name variable is non-empty. If the name variable is non-empty, it means that the user has entered their name, and the loop is broken using the break statement.

If the loop finishes without the user entering their name, the program checks whether the name variable is empty using the not operator. If the name variable is empty, it sets the name variable to "Sam". Finally, the program prints a personalized greeting message using the name variable.

You can modify the timer duration (10 seconds) or the default name ("Sam") based on your requirements.

.LINK
   -> https://chat.openai.com/chat/

"""
