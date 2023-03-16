import os

# Get the list of Python files in the current directory
files = [file for file in os.listdir('.') if file.endswith('.py') and file != os.path.basename(__file__)]

# Display the list of files in the format [item number] filename.py
for i, file in enumerate(files):
    print("[{}] {}".format(i+1, file))

# Prompt the user to input the item number of the file they want to execute
while True:
    try:
        item_number = int(input("Enter the item number of the file you want to execute: "))
        if item_number < 1 or item_number > len(files):
            raise ValueError()
        break
    except ValueError:
        print("Invalid input, please enter a valid item number.")

# Execute the selected file
selected_file = files[item_number-1]
print("Executing file:", selected_file)
exec(open(selected_file).read())

