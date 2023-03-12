import sys
import json
from prettytable import PrettyTable

# Check if the JSON file name is provided as a command line argument
if len(sys.argv) < 2:
    print("Usage: python script.py <json_file>")
    sys.exit(1)

# Read the JSON file
json_file = sys.argv[1]
with open(json_file) as f:
    data = json.load(f)

# Create a PrettyTable object with headers
table = PrettyTable()
table.field_names = list(data[0].keys())

# Add rows to the table
for row in data:
    table.add_row(row.values())

# Print the table
print(table)

