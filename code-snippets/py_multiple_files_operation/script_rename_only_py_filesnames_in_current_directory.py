"""  _____________________{ CHATGPT QUERY }______________________________

.QUERY
   rename the files names with '-' occurrences in all the python file names with (*.py) extension into "_"
    
.RESPONSE
   Sure, here's the Python code to rename all files with a .py extension 
   in the current directory that contain a hyphen (-) in their name 
   to replace the hyphen with an underscore (_):

.SYNTAX
   

.NOTE

Note that this code will overwrite the original files,
so it's a good idea to make a backup of the directory 
before running this code.
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
_______________________________{ CODE_BELOW }_____________________________"""


import os
import re

#directory = input("Enter the Directory Path : ")
script_title= "Replace hypen(-) -> underscore (_)"
os.system("python D:\\terminal\\figlet.py --message {}".format(script_title))

directory = os.getcwd()

print("Renaming Python files in Current working directory:")
print ("[NOTE]Please Backup the files before running this code")
is_backup = input("Have you backup the files (y or n :)")

if is_backup == 'y' :
      for filename in os.listdir():
        if filename.endswith('.py') and '-' in filename:
            new_filename = filename.replace('-', '_')
            os.rename(filename, new_filename)
            print(f"Renamed {filename} to {new_filename}")  
        print("Files renamed successfull")
else :
    print("No files have been touched | you can chill!")   

"""



_______________________________{ CODE_ABOVE }_____________________________

.OUTPUT 


.HOW_THE_SCRIPT_WORK

In this code, we first use the os.listdir() method to get a list of all files in the current directory. We then use a for loop to iterate over the list of filenames.

For each filename that ends with .py and contains a hyphen (-), we use the replace() method to replace the hyphen with an underscore (_) and assign the new name to the new_filename variable.

We then use the os.rename() method to rename the file with the new name, and print a message to confirm the renaming.
.LINK
   _> https://chat.openai.com/chat/

"""
