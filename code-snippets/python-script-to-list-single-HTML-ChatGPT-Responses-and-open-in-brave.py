# import necessary modules
import os
import webbrowser
import function_show_figlet_message as fig

# display a figlet message
fig.show_figlet("ChatGPT Codes")

# define directory and extension for file filtering
directory = "D:/terminal/code-snippets"
extension = ".mhtml"
prefix = "ChatGPT "

# create a list of files with the given extension in the directory
files = [f for f in os.listdir(directory) if f.endswith(extension)]

# prefix each file name with a specific string
prefixed_files = [prefix + f for f in files]

# display the list of files to the user
for i, f in enumerate(prefixed_files):
    print(f"[{i}] -> {f}")

# prompt the user to select a file or exit
while True:
    selection = input("[INPUT] Enter the index of the file to open in 'brave' browser, or 'exit' to quit: ")
    if selection == 'exit':
        break
    
    # open the selected file in Brave browser if the input is a valid index
    if selection.isdigit() and int(selection) < len(files):
        filename = directory + "/" + files[int(selection)]
        url = "file://" + filename
        print("[BRAVE] Opening URL =>" + url)
        
        # register and open the file in Brave browser
        webbrowser.register('brave', None, webbrowser.BackgroundBrowser("C:/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe"))
        webbrowser.get('brave').open(url)
    else:
        print("Invalid selection")

