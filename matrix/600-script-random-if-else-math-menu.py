"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   create a python game to do random 2 digit substraction, multiplication, addition, find square-root, find cube-root. display the options in a menu like style 
    
.RESPONSE
   Sure, here's an example Python game that meets your requirements:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""
import random
import math
import pass_message_to_func_show_figlet as figlet
figlet.show_figlet("Random Math Calculator")

def main():
    while True:
        print("-"*40)
        figlet.show_figlet("PyMenu")
        print("\nWhat would you like to do?")
        print("1. Do a random 2-digit subtraction problem")
        print("2. Do a random 2-digit multiplication problem")
        print("3. Do a random 2-digit addition problem")
        print("4. Find the square root of a number")
        print("5. Find the cube root of a number")
        print("6. Exit the program")
        
        choice = input("Enter your choice: ")
        
        if choice == '1':
            num1 = random.randint(10, 99)
            num2 = random.randint(10, 99)
            answer = num1 - num2
            print(f"What is {num1} - {num2}?")
            check_answer(answer)
        elif choice == '2':
            num1 = random.randint(10, 99)
            num2 = random.randint(10, 99)
            answer = num1 * num2
            print(f"What is {num1} * {num2}?")
            check_answer(answer)
        elif choice == '3':
            num1 = random.randint(10, 99)
            num2 = random.randint(10, 99)
            answer = num1 + num2
            print(f"What is {num1} + {num2}?")
            check_answer(answer)
        elif choice == '4':
            num = int(input("Enter a number to find its square root: "))
            answer = math.sqrt(num)
            print(f"The square root of {num} is {answer}")
        elif choice == '5':
            num = int(input("Enter a number to find its cube root: "))
            answer = round(math.pow(num, 1/3), 2)
            print(f"The cube root of {num} is {answer}")
        elif choice == '6':
            print("Goodbye!")
            break
        else:
            print("Invalid choice. Please try again.")
            
def check_answer(answer):
    user_answer = int(input("Enter your answer: "))
    if user_answer == answer:
        print("Correct!")
    else:
        print(f"Sorry, the correct answer is {answer}")

if __name__ == '__main__':
    main()


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
In this game, the user is presented with a menu of options, and can choose to do a random 2-digit subtraction, multiplication, or addition problem, or find the square root or cube root of a number. The user's input is validated to make sure it is one of the options, and the appropriate action is taken based on the choice. The check_answer function is used to validate the user's answer to the math problem, and give them feedback on whether they were correct or not. The program continues to loop until the user chooses to exit.

.LINK
   -> https://chat.openai.com/chat/

"""
