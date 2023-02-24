""" 
.SYNOPSIS
    
    This Python script pass operator using functions. 

.DESCRIPTION
    
    
    You can pass operators using functions in Python by passing them as arguments to the function.
    
.PARAMETER

    

.NOTE
Note that in this example, we only included the four basic arithmetic operators (+, -, *, and /), but you could modify the function to include other operators as needed.
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
"""
import os 
import pass_message_to_func_show_figlet as figlet

figlet.show_figlet("Pass Operator")


def apply_operator(num1, num2, operator):
    if operator == "+":
        return num1 + num2
    elif operator == "-":
        return num1 - num2
    elif operator == "*":
        return num1 * num2
    elif operator == "/":
        return num1 / num2
    else:
        print("Invalid operator")
        return None

num1 = input("Enter 1st Number :-> ")
num2 = input("Enter 2nd Number :-> ")
operator = input("Enter any operator (+,-,*,/) :-> ")
result = apply_operator(num1, num2, operator)
print(f"{num1} {operator} {num2} = {result}")


"""
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal> python


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

In this example, the apply_operator function takes three arguments: num1, num2, and operator. The operator argument is a string that represents the operator to apply to num1 and num2. Inside the function, we use an if statement to check which operator was passed, and then perform the corresponding operation using num1 and num2. If an invalid operator is passed, the function prints an error message and returns None.

To use this function, we pass it the two numbers we want to operate on, and the operator we want to use. We then assign the result of the function to a variable called result, and print out the equation and the result using an f-string.


"""
