import json
from prettytable import PrettyTable

with open('list_of_modules.json', 'r') as f:
    data = json.load(f)

table = PrettyTable()
table.field_names = ["Package Name", "Description", "Syntax", "Status"]

for package_name, package_data in data.items():
    desc = package_data['desc']
    syntax = package_data['syntax']
    status = package_data['status']
    table.add_row([package_name, desc, syntax, status])

print(table)

