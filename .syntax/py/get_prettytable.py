import argparse
from prettytable import PrettyTable

# Define the command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("keys", nargs="+", help="List of keys")
parser.add_argument("values", nargs="+", help="List of values")
args = parser.parse_args()

# Create the table and add the headers
table = PrettyTable()
table.field_names = ['Key', 'Value']

# Add rows to the table
for i in range(len(args.keys)):
    table.add_row([args.keys[i], args.values[i]])

# Print the table
print(table)

