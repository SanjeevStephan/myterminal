import os

# Execute the 'figlet.py' script with a message using os.system
script_path = r'D:\terminal\py\figlet.py'
message = 'Convert to *.py'
os.system(f'python {script_path} --message "{message}"')

# Define a function to replace spaces with dashes
def replace_spaces_with_dashes(input_string):
    return input_string.replace(" ", "_")

# Prompt the user to enter a string with spaces
my_string = input("Enter a string with spaces: ")

# Replace spaces with dashes and add the '.py' extension to create the new file name
new_string_with_dash = replace_spaces_with_dashes(my_string)
new_python_file_name = f"{new_string_with_dash}.py"

# Set the new file name to the clipboard using os.system
os.system(f"echo '{new_python_file_name}'| clip")

# Print a message to confirm that the file name was sent to the clipboard
print("Python filename sent to the clipboard. Now try pasting it.")
print(f"=> {new_python_file_name}")

