
from prettytable import PrettyTable

my_dict = {"apple": 2, "banana": 3, "orange": 1}

# create a new table
table = PrettyTable()

# add columns to the table
table.add_column("Fruit", list(my_dict.keys()))
table.add_column("Quantity", list(my_dict.values()))

# print the table
print(table)


 
