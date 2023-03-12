import os
import json
import datetime
import pyfiglet as figlet
import webbrowser
import json_manager_config_v5_0 as config
from prettytable import PrettyTable


# Define an empty to-do list
todo_list = []

# Define all the refrerences
json_filename = config.json_filename
script_name  = config.script_name

column_header_1 = config.column_header_1
column_header_2 = config.column_header_2
column_header_3 = config.column_header_3
column_header_4 = config.column_header_4

column_lower_header_2 = column_header_2.lower()
column_lower_header_3 = column_header_3.lower()
column_lower_header_4 = column_header_4.lower()

item_name = config.item_name

def showFiglet(msg=script_name):
    text_to_print = figlet.figlet_format(msg)
    print(text_to_print)

# Define a function to display the to-do list
def show_list():
    table = PrettyTable()
    table.field_names = [column_header_1, column_header_2, column_header_4]
    for i, item in enumerate(todo_list, start=1):
        table.add_row([i, item[column_lower_header_2], item[column_lower_header_4]])
    print(table)

# Define a function to display the to-do list (NOT_IN_USE)
def show_list_with_datetime():
    table = PrettyTable()
    table.field_names = [column_header_1, column_header_2, column_header_3, column_header_4]
    for i, item in enumerate(todo_list, start=1):
        table.add_row([i, item[column_lower_header_2], item[column_lower_header_3], item[column_lower_header_4]])
    print(table)

# Define a function to add an item to the to-do list
def add_item():
    title = input("What do you want to add to your {}? ".format(script_name))
    date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    todo_list.append({column_lower_header_2: title, column_lower_header_3: date, column_lower_header_4: "pending"})
    print(f"'{title}' has been added to your {script_name}.")
    show_list()
    save_list()

# Define a function to remove an item from the to-do lists
def remove_item():
    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to remove: "))
        removed_item = todo_list.pop(item_index - 1)
        print(f"'{removed_item[column_lower_header_2]}' has been removed from your {script_name}.")
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
        new_title = input(f"Enter new title for '{item[column_lower_header_2]}': ")
        item[column_lower_header_2] = new_title
        print(f"'{item[column_lower_header_2]}' has been updated in your {script_name}.")
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
        #new_title = input(f"Enter new title for '{item[column_lower_header_2]}': ")
        new_status = input(f"Current Status of '{item[column_lower_header_2]}' is '{item[column_lower_header_4]}': ")        
        item[column_lower_header_4] = new_status
        print(f"'{item[column_lower_header_2]}' has been updated to '{item[column_lower_header_4]}'.")
        show_list()
        save_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        edit_item()

# Define a function to clear the entire to-do list
def clear_list():
    confirmation = input("Are you sure you want to clear your {}? (y/n) ".format(script_name))
    if confirmation.lower() == "y":
        todo_list.clear()
        print("Your {} has been cleared.".format(script_name))
        show_list()
        save_list()

# Define a function to save the to-do list to a JSON file
def save_list():
    with open(json_filename, "w") as f:
        json.dump(todo_list, f, indent=4)

# Define a function to load the to-do list from a JSON file
def load_list():
    global todo_list
    try:
        with open(json_filename, "r") as f:
            todo_list = json.load(f)
    except FileNotFoundError:
        pass


# Define a function to display the menu
def show_menu():
    showFiglet()   # Display the script name
    show_list()    # Display the json file on prettytable
    print("What would you like to do?")
    print("1. View your {}".format(script_name))
    print("2. View your {} with creation-date".format(script_name))    
    print("3. Add an {} to your {}".format(item_name,script_name))
    print("4. Edit an {} in your {}".format(item_name,script_name))
    print("5. Update the Status of an item")
    print("6. Remove an item from your {}".format(script_name))    
    print("7. Clear your entire {}".format(script_name))
    print("8. How the Script works? | (not-working)")
    print("9. Quit")
    print("10. Open 'myenglishpages.com' exercises in brave ")
    print()


def open_manual():
    

    # Replace 'path/to/file.html' with the actual path to your HTML file
    file_path = 'file://D:/terminal/.chatgpt_responses/JSON-TO-DO-MENU-MANAGER.mhtml'

    # Replace 'brave.exe' with the actual path to the Brave executable on your computer
    brave_path = 'C:/Program Files (x86)/BraveSoftware/Brave-Browser/Application/brave.exe'

    webbrowser.register('brave', None, webbrowser.BackgroundBrowser(brave_path))
    webbrowser.get('brave').open(file_path)


# Load the to-do list from the JSON file
load_list()

# Start the program 
while True:
    os.system("cls")
    show_menu()
    choice = input("Enter the number of your choice: ")
    if choice == "1":
        show_list()
    elif choice == "2":
        show_list_with_datetime()        
    elif choice == "3":
        showFiglet("Add Item")
        add_item()
    elif choice == "4":
        showFiglet("Edit Item")
        edit_item()
    elif choice == "5":
        showFiglet("Update Status")
        update_status()        
    elif choice == "6":
        showFiglet("Remove Item")
        remove_item()
    elif choice == "7":
        showFiglet("Clear {}".format(script_name))
        clear_list()   
    elif choice == "8":
        print("Yet to figure out!")
        print("-> how to open html files using brave via python")
        #manual.show_manual()     
        #open_manual()
        #os.system("Start-Process brave file:// {}".format(config.manual_path).replace("\\","/"))          
    elif choice == "9":
        showFiglet("GoodBye")
        print("Goodbye!")
        break
    elif choice == "10":
        showFiglet("myenglishpages.com")
        print("Opening 'myenglishpages.com' in brave!")
        url="https://www.myenglishpages.com/english/exercises.php"
        os.system("brave.exe {}".format(url))   
    else:
        print("Invalid input. Please try again.")

