import json
import datetime
import how_the_script_works as manual
from prettytable import PrettyTable


# Define an empty to-do list
todo_list = []

# Define a function to display the to-do list
def show_list():
    table = PrettyTable()
    table.field_names = ["Serial", "Title", "Date", "Status"]
    for i, item in enumerate(todo_list, start=1):
        table.add_row([i, item['title'], item['date'], item['status']])
    print(table)

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

# Define a function to edit an item in the to-do list
def edit_item():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to edit: "))
        item = todo_list[item_index - 1]
        new_title = input(f"Enter new title for '{item['title']}': ")
        item['title'] = new_title
        print(f"'{item['title']}' has been updated in your to-do list.")
        show_list()
        save_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        edit_item()

# Define a function to edit an item in the to-do list
def update_status():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to edit: "))
        item = todo_list[item_index - 1]
        #new_title = input(f"Enter new title for '{item['title']}': ")
        new_status = input(f"Current Status of '{item['title']}' is '{item['status']}': ")        
        item['status'] = new_status
        print(f"'{item['title']}' has been updated to '{item['status']}'.")
        show_list()
        save_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        edit_item()

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
    print("3. Edit an item in your to-do list")
    print("4. Update the Status of an item")
    print("5. Remove an item from your to-do list")    
    print("6. Clear your entire to-do list")
    print("7. How the Script works?")
    print("8. Quit")
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
        edit_item()
    elif choice == "4":
        update_status()        
    elif choice == "5":
        remove_item()
    elif choice == "6":
        clear_list()   
    elif choice == "7":
        manual.show_manual()              
    elif choice == "8":
        print("Goodbye!")
        break
    else:
        print("Invalid input. Please try again.")

