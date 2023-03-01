import json
import datetime
import argparse
import pyfiglet as fig
from prettytable import PrettyTable

# Define an empty to-do list
todo_list = []

def setFilename(jsonfile):
    print("File name passsed : {}".format(jsonfile))
    return jsonfile

if __name__ == "__main__":
    global filename
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="Hello", help="Text message to display ")
    args = parser.parse_args()
    filename = setFilename(jsonfile=args.json)

#filename="saved_todo_list.json"

def coolText(msg="TimeTable"):
    print(fig.figlet_format(msg))

coolText()
# Define a function to display the to-do list
def show_list():
    print("To-Do List:")
    table = PrettyTable()
    table.field_names = ["Title", "Time", "Status"]
    for i, item in enumerate(todo_list, start=1):
        table.add_row([item["title"], item["time"], item["status"]])
    print(table)

# Define a function to add an item to the to-do list
def add_item():
    title = input("What do you want to add to your to-do list? : ")
    time = input("Between what time do you want to Perform this activity? : ") 
    status = input("What is the Status of this activity? : ")
    #title = input("What do you want to add to your to-do list? ")       
    #date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    todo_list.append({"title": title, "time": time, "status": status})
    
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
    with open(filename, "w") as f:
        json.dump(todo_list, f, indent=4)

# Define a function to load the to-do list from a JSON file
#def load_list(filename="saved_todo_list.json"):
def load_list():
    global todo_list
    try:
        with open(filename, "r") as f:
            todo_list = json.load(f)
    except FileNotFoundError:
        pass

# Define a function to display the menu
def show_menu():
    print("Json-TimeTable Filename : {}".format(filename))
    print("What would you like to do?")
    print("1. Show Timetable ")
    print("2. Add New item from your to-do list")    
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
        #filename="timetable_tue_thru_sat.json"
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

