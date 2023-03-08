import json
from prettytable import PrettyTable

pkg_list = []

def view_list(with_desc=True):
    # Create PrettyTable object with column names
    table = PrettyTable()
    table.field_names = ["Package", "Description", "Syntax", "Status"]

    # Add data to the table
    for package_info in pkg_list:
        package_name = package_info['package_name']
        desc = package_info['desc'] if with_desc else ""
        syntax = package_info['syntax']
        status = package_info['status']
        table.add_row([package_name, desc, syntax, status])

    # Print the table
    print(table)

def add_package():
    package_name = input("Enter package name: ")
    desc = input("Enter package description: ")
    syntax = input("Enter package syntax: ")
    status = input("Enter package status: ")
    pkg_list.append({"package_name": package_name, "desc": desc, "syntax": syntax, "status": status})
    save_data()
    print(f"{package_name} has been added to the list.")

def edit_package():
    package_name = input("Enter package name to edit: ")
    package_info = find_package(package_name)
    if package_info is None:
        print("Package not found.")
        return
    desc = input("Enter new package description: ")
    syntax = input("Enter new package syntax: ")
    status = input("Enter new package status: ")
    package_info['desc'] = desc
    package_info['syntax'] = syntax
    package_info['status'] = status
    save_data()
    print(f"{package_name} has been updated.")

def update_status():
    package_name = input("Enter package name to update status: ")
    package_info = find_package(package_name)
    if package_info is None:
        print("Package not found.")
        return
    status = input("Enter new status: ")
    package_info['status'] = status
    save_data()
    print(f"{package_name} status has been updated.")

def remove_package():
    package_name = input("Enter package name
