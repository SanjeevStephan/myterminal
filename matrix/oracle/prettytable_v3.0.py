"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""

import os
import json
import datetime
import prettytable 
import menu_config as config


filename = config.filename

figlet_display_text = config.read_table_title
read_full_table_column_header_1 = config.read_full_table_column_header_1
read_full_table_column_header_2 = config.read_full_table_column_header_2
read_full_table_column_header_3 = config.read_full_table_column_header_3

read_full_table_add_row_value_1st = config.read_full_table_add_row_value_1st
read_full_table_add_row_value_2nd = config.read_full_table_add_row_value_2nd 
read_full_table_add_row_value_3rd = config.read_full_table_add_row_value_3rd

read_full_table_sort_by = config.read_full_table_sort_by



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
        #delete_item = removed_item['title']
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
    print("5. Clear the screen")
    print("6. Quit")    
    print()

# Load the to-do list from the JSON file
load_list()

"""-------------------------------{ MY CUSTOM CODE Below }-----------------------------"""
# Define a function to display the to-do list | uncleared
def list_json_data_keys():
    print("To-Do List:")
    for i, item in enumerate(todo_list, start=1):
        print(f"{i}. {item['title']} ({item['status']})")
    print()


def full_table():
    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

        # create the table and add the data
        table = prettytable.PrettyTable()
        table.field_names = [read_full_table_column_header_1, read_full_table_column_header_2, read_full_table_column_header_3]
        for operation, values in data.items():
            table.add_row([operation.capitalize(), values[read_full_table_add_row_value_2nd], values[read_full_table_add_row_value_3rd]])
            table.sortby = config.read_full_table_sort_by
        print(table)

def single_row(keyword):
    #filename = "saved_vocabulary.json"

    filename = "vocabulary_saved.json"
    # read the JSON file into a dictionary
    with open(filename, "r") as f:
        data = json.load(f)

    # key-word
    # print("->>> Keyword received [{}]".format(keyword))
    #keyword = "introvert"

    # extract the row you want as a list
    row = [data[keyword]["word"], data[keyword]["meaning"], data[keyword]["session"]]
    print(row)
    # create a new table with just that row
    table = prettytable.PrettyTable()
    table.field_names = ["Word", "Meaning", "Session"]
    table.add_row(row)

    print("[Updated] Keyword '{}' with the following contents".format(keyword))
    # display the table
    print(table)



def add_json_item() :
        # callTableFunctions.showComment("Loop","While Loop Started'")
    while True:
        
        # Ask the user for module information
        jason_child_item_1 = input("Enter the {} (or 'exit' to [q]uit): ".format(read_full_table_column_header_1))

        if jason_child_item_1.lower() == "exit":
            break                            # exit the loop if the user enters 'exit'
        elif jason_child_item_1.lower() == "q":
            break
        elif jason_child_item_1.lower() == "fulltable":
            full_table()  # Display full table   
            continue                        # Go back to the beginning of the loop       

        # Read the existing JSON data from the file
        with open(filename, "r") as file:
            data = json.load(file)

        # Check if the entered vocabulary word already exists in the data
        if jason_child_item_1.lower() in data:
            print(f"=> Replacing the content of '{jason_child_item_1}'")
        else:
            print(f"New key-word found: '{jason_child_item_1}'")

        # Ask for the meaning and session of the vocabulary word
        jason_child_item_2 = input("Enter the {} : ".format(read_full_table_add_row_value_2nd))
        jason_child_item_3 = input("Enter the {} : ".format(read_full_table_add_row_value_3rd))

        # Update the data with the new information
        showComment("JSON","Writing to file : {}'".format(filename))
        data[jason_child_item_1.lower()] = {
            read_full_table_add_row_value_1st   : jason_child_item_1.lower(),
            read_full_table_add_row_value_2nd   : jason_child_item_2.lower(),
            read_full_table_add_row_value_3rd   : jason_child_item_3.lower()
        }

        # Write the updated JSON data back to the file
        with open(filename, "w") as file:
            json.dump(data, file, indent=4)

        # Print a message indicating that the data was successfully saved
        print(f"'{jason_child_item_1}' saved to '{filename}'")

        # display a single updated row
        # callTableFunctions.showComment("Variable","Pasing '{}' to single_row() -> snippet_getFullTable.py".format(jason_child_item_1.lower()))
        #print("[Sending] {} to func() single_row".format(jason_child_item_1.lower()))
        callTableFunctions.single_row(jason_child_item_1.lower())

    print("Exiting program...")


# Define a function to remove an item from the to-do list
def delete_json_item():

    show_list()
    try:
        item_index = int(input("Enter the number of the item you want to remove: "))
        removed_item = todo_list.pop(item_index - 1)
        delete_item = removed_item['title']
        print(f"'{removed_item['title']}' has been removed from your to-do list.")
        show_list()
        save_list()
    except (ValueError, IndexError):
        print("Invalid input. Please try again.")
        remove_item()        


def showFiglet(message):
    os.system('python D:\\terminal\\py\\figlet.py --message "{}"'.format(message))

def showComment(type="Comment",message="No Message Passed"):
    print("[{}] {}".format(type,message))



"""-------------------------------{ MY CUSTOM CODE Above }-----------------------------"""

# Start the program
while True:
    show_menu()
    choice = input("Enter the number of your choice: ")
    if choice == "1":
        show_list()
        full_table()
        single_row("egoist")
    elif choice == "2":
        add_item()
    elif choice == "3":
        remove_item()
    elif choice == "4":
        clear_list()
    elif choice == "5":
        os.system("cls")       
    elif choice == "6":
        print("Goodbye!")
        break
    else:
        print("Invalid input. Please try again.")



"""-------------------------------{ CODE_ABOVE }----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

"""
