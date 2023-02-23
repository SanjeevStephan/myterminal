"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE
    Here's an updated example that asks the user to enter a string and then displays the converted output:

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""
import os
import pyperclip
os.system('python D:\\terminal\\py\\figlet.py --message "Convert to *.py"')

def replace_spaces_with_dashes(input_string):
    return input_string.replace(" ", "-")

#my_string = input("Enter a string with spaces: ")

# Get the text from the clipboard
my_string = pyperclip.paste()

new_string_with_dash = replace_spaces_with_dashes(my_string)
print("Here is your python file-name with (*.py) extension!")
new_python_file_name = "{}.{}".format(new_string_with_dash,"py")
# Setting the 'new_python_file_name' to clipboard 
# Now easily paste it anywhere without manually selecting the text and copying the text
#os.system("Set-Clipboard {}".format(new_python_file_name))

# copy the text to the clipboard
pyperclip.copy(new_python_file_name) 
print("Python Filename sent to the clipboard | Now Try Pasting it ")
print("=> {}".format(new_python_file_name))


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
    This code is similar to the previous example, but instead of using a predefined string, it asks the user to input a string using the input function. The input is stored in the variable my_string.

    The function replace_spaces_with_dashes is defined to replace all occurrences of a space (" ") with a dash ("-"), as before. The modified string is returned from the function.

    The replace_spaces_with_dashes function is called with my_string as an argument, and the resulting modified string is stored in the variable new_string. Finally, new_string is printed to the console.

    This code will ask the user to enter a string with spaces, replace all spaces with dashes, and print the modified string to the console.

.LINK
   -> https://chat.openai.com/chat/

"""
