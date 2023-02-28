"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   todo list' script in python
    
.RESPONSE
   Sure, here's a simple script in Python that allows you to create and manage a to-do list:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


# Define an empty to-do list
todo_list = []

# Define a function to display the to-do list
def show_list():
    print("To-Do List:")
    for i, item in enumerate(todo_list, start=1):
        print(f"{i}. {item}")
    print()

# Define a function to add an item to the to-do list
def add_item():
    item = input("What do you want to add to your to-do list? ")
    todo_list.append(item)
    print(f"'{item}' has been added to your to-do list.")
    show_list()

# Define a function to remove an item from the to-do list
def remove_item():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to remove: "))
        removed_item = todo_list.pop(item_index - 1)
        print(f"'{removed_item}' has been removed from your to-do list.")
        show_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        remove_item()

# Define a function to clear the entire to-do list
def clear_list():
    confirmation = input("Are you sure you want to clear your to-do list? (y/n) ")
    if confirmation.lower() == "y":
        todo_list.clear()
        print("Your to-do list has been cleared.")
    show_list()

# Define a function to display the menu
def show_menu():
    print("What would you like to do?")
    print("1. View your to-do list")
    print("2. Add an item to your to-do list")
    print("3. Remove an item from your to-do list")
    print("4. Clear your entire to-do list")
    print("5. Quit")
    print()

# Start the program
while True:
    show_menu()
    choice = input("Enter the number of your choice: ")
    if choice == "1":
        show_list()
    elif choice == "2":
        add_item()
    elif choice == "3":
        remove_item()
    elif choice == "4":
        clear_list()
    elif choice == "5":
        print("Goodbye!")
        break
    else:
        print("Invalid input. Please try again.")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This script defines an empty list to store the to-do items, and then defines several functions to perform various actions on the list. The show_list function displays the current contents of the list, the add_item function prompts the user to enter a new item and adds it to the list, the remove_item function prompts the user to select an item to remove from the list, and the clear_list function removes all items from the list. The show_menu function displays a menu of options for the user to choose from, and the while loop runs continuously until the user chooses to quit.

.LINK
   -> https://chat.openai.com/chat/

"""
