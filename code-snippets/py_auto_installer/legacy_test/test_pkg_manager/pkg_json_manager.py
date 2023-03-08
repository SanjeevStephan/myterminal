import json
import pyfiglet as figlet
from prettytable import PrettyTable
import pkg_manager_config as config

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


def showFiglet(msg=script_name):
    text_to_print = figlet.figlet_format(msg)
    print(text_to_print)

def view_list(data, with_desc=True):
    # Create PrettyTable object with column names
    table = PrettyTable()
    table.field_names = ["Package", "Description", "Syntax", "Status"]

    # Add data to the table
    for package_name, package_info in data.items():
        desc = package_info['desc'] if with_desc else ""
        syntax = package_info['syntax']
        status = package_info['status']
        table.add_row([package_name, desc, syntax, status])

    # Print the table
    print(table)

def add_package(data):
    package_name = input("Enter package name: ")
    desc = input("Enter package description: ")
    syntax = input("Enter package syntax: ")
    status = input("Enter package status: ")
    data[package_name] = {"desc": desc, "syntax": syntax, "status": status}
    save_data(data)
    print(f"{package_name} has been added to the list.")

def edit_package(data):
    package_name = input("Enter package name to edit: ")
    if package_name not in data:
        print("Package not found.")
        return
    desc = input("Enter new package description: ")
    syntax = input("Enter new package syntax: ")
    status = input("Enter new package status: ")
    data[package_name] = {"desc": desc, "syntax": syntax, "status": status}
    save_data(data)
    print(f"{package_name} has been updated.")

def update_status(data):
    package_name = input("Enter package name to update status: ")
    if package_name not in data:
        print("Package not found.")
        return
    status = input("Enter new status: ")
    data[package_name]["status"] = status
    save_data(data)
    print(f"{package_name} status has been updated.")

def remove_package(data):
    package_name = input("Enter package name to remove: ")
    if package_name not in data:
        print("Package not found.")
        return
    del data[package_name]
    save_data(data)
    print(f"{package_name} has been removed from the list.")

def clear_list(data):
    data.clear()
    save_data(data)
    print("The list has been cleared.")

def save_data(data):
    # Write updated JSON data back to file
    with open('all_pkgs.json', 'w') as f:
        json.dump(data, f, indent=4)

def menu():

    # Load JSON data from file
    with open('all_pkgs.json') as f:
        data = json.load(f)

    while True:
        print("\nWhat would you like to do?")
        print("1. View the list")
        print("2. View the list without descriptions")
        print("3. Add a package")
        print("4. Edit a package")
        print("5. Update the status of a package")
        print("6. Remove a package")
        print("7. Clear the entire list")
        print("8. Quit")
        choice = input("Enter your choice (1-8): ")

        if choice == "1":
            view_list(data)
        elif choice == "2":
            view_list(data, with_desc=False)
        elif choice == "3":
            add_package(data)
        elif choice == "4":
            edit_package(data)
        elif choice == "5":
            update_status(data)
        elif choice == "6":
            remove_package(data)
        elif choice == "7":
            clear_list(data)
        elif choice == "8":
            print("GoodBye")
            print("Goodbye!")
            break
        else:
            print("Invalid input. Please try again.")

showFiglet("Pkg Manager")
menu()