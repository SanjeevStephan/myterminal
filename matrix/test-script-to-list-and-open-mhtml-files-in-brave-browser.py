import os
import webbrowser
import pass_message_to_func_show_figlet as fig

fig.show_figlet("ChatGPT Codes")

directory = "D:/terminal/code-snippets"
extension = ".mhtml"
prefix = "ChatGPT "

# Get a list of all the files with the .mhtml extension
files = [f for f in os.listdir(directory) if f.endswith(extension)]

# Add a prefix to each file name to help with selection
prefixed_files = [prefix + f for f in files]

# Display the list of files in the terminal
for i, f in enumerate(prefixed_files):
    #print(f"[{i}] : {f}")
    print(f"[{i}] -> {f}")

while True:

    # Prompt the user to select a file or exit
    selection = input("[INPUT] Enter the index of the file to open in 'brave' browser, or 'exit' to quit: ")

    if selection == 'exit':
        break

    # Open the selected file in Brave browser
    if selection.isdigit() and int(selection) < len(files):
        filename = directory + "/" + files[int(selection)]
        url = "file://" + filename
        print("[BRAVE] Opening URL =>" + url)
        webbrowser.register('brave', None, webbrowser.BackgroundBrowser("C:/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe"))
        webbrowser.get('brave').open(url)
    else:
        print("Invalid selection")
