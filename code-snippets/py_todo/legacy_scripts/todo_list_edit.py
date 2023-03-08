"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
   Sure, here's an updated version of the script that includes an option to edit a to-do list item by selecting its index number:

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import os
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

# Define a function to edit an item in the to-do list
def edit_item():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to edit: "))
        item = todo_list[item_index - 1]
        print(f"Editing item {item_index}: {item['title']}")
        new_title = input("Enter a new title for the item (or press enter to keep the current title): ")
        if new_title:
            item['title'] = new_title
        new_status = input("Enter a new status for the item (or press enter to keep the current status): ")
        if new_status:
            item['status'] = new_status
        print(f"Item {item_index} has been updated.")
        show_list()
        save_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        edit_item()

# Define a function to save the to-do list to a JSON file
def save_list():
    with open("saved_todo_list.json", "w") as f:
        json.dump(todo_list, f)

# Define a function to load the to-do list from a JSON file
def load_list():
    os.system("clear")
    """
    is_clear = input("Do you want to clear the screen (y/n):")
    if is_clear == "y": 
      os.system("cls")
    else :
      print("not clearing the screen right now")
      """

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
    print("4. Edit an item in your to-do list")
    print("5. Clear your entire to-do list")
    print("6. Quit")


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
