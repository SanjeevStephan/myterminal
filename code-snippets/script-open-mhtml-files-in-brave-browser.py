import os

directory = "D:/terminal/code-snippets"
extension = ".mhtml"
prefix = "[0] "

# Get a list of all the files with the .mhtml extension
files = [f for f in os.listdir(directory) if f.endswith(extension)]

# Add a prefix to each file name to help with selection
prefixed_files = [prefix + f for f in files]

# Display the list of files in the terminal
for i, f in enumerate(prefixed_files):
    print(f"{i}: {f}")

# Prompt the user to select a file
selection = input("Enter the index of the file to open: ")

# Open the selected file in Brave browser
if selection.isdigit() and int(selection) < len(files):
    filename = directory + "/" + files[int(selection)]
    os.system(f"brave {filename}")
else:
    print("Invalid selection")

