"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
    This Python Script display a nice menu with usefull options such as
    -> [?]  What would you like to do?
    -> 1. View your to-do list
    -> 2. Add an item to your to-do list
    -> 3. Remove an item from your to-do list
    -> 4. Clear your entire to-do list
    -> 5. Quit
    print()

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
import datetime

# Define an empty to-do list
todo_list = []

# Define a function to display the to-do list
def show_list():
    print("To-Do List:")
    for i, item in enumerate(todo_list, start=1):
        print(f"{i}. {item['title']} ({item['status']})")
    print()

# Define a function to add an item to the to-do list
def add_item():
    title = input("What do you want to add to your to-do list? ")
    date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    todo_list.append({"title": title, "date": date, "status": "pending"})
    print(f"'{title}' has been added to your to-do list.")
    show_list()
    save_list()

# Define a function to remove an item from the to-do list
def remove_item():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to remove: "))
        removed_item = todo_list.pop(item_index - 1)
        print(f"'{removed_item['title']}' has been removed from your to-do list.")
        show_list()
        save_list()
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
        save_list()

# Define a function to save the to-do list to a JSON file
def save_list():
    with open("saved_todo_list.json", "w") as f:
        json.dump(todo_list, f, indent=4)

# Define a function to load the to-do list from a JSON file
def load_list():
    global todo_list
    try:
        with open("saved_todo_list.json", "r") as f:
            todo_list = json.load(f)
    except FileNotFoundError:
        pass

# Define a function to display the menu
def show_menu():
    print("What would you like to do?")
    print("1. View your to-do list")
    print("2. Add an item to your to-do list")
    print("3. Remove an item from your to-do list")
    print("4. Clear your entire to-do list")
    print("5. Quit")
    print()

# Load the to-do list from the JSON file
load_list()

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


.LINK
   -> https://chat.openai.com/chat/

"""
