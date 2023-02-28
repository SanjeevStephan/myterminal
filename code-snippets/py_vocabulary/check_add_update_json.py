"""  ---------------------{ CHATGPT QUERY }------------------------------   
.RESPONSE
   Here's an improved version of the previous code from 'add_update_json.py' :

.DESCRIPTION
 

.NOTE

.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
import snippet_comment as log
import snippet_getFullTable as callTableFunctions


filename = "dictionary/saved_vocabulary.json"
log.showComment("File Loaded",filename)
callTableFunctions.showFiglet("Add Vocabulary")  # Display 'Add Vocabulary' figlet ascii text
log.showComment("Calling Fuction","showInstructions() from 'snippet_getFullTable.py'")
callTableFunctions.showInstructions()            # Show instruction for adding and updating json data
log.showComment("Calling Fuction","full_table() from 'snippet_getFullTable.py'")
callTableFunctions.full_table()                  # Display The Json Dictionary Data as table once before making any changes to it

log.showComment("Loop","While Loop Started'")
while True:
    
    # Ask the user for module information
    vocab_word = input("Enter the vocabulary word (or 'exit' to [q]uit): ")

    if vocab_word.lower() == "exit":
        break                            # exit the loop if the user enters 'exit'
    elif vocab_word.lower() == "q":
        break
    elif vocab_word.lower() == "fulltable":
        callTableFunctions.full_table()  # Display full table   
        continue                        # Go back to the beginning of the loop       

    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

    # Check if the entered vocabulary word already exists in the data
    if vocab_word.lower() in data:
        print(f"Replacing the content of '{vocab_word}'")
    else:
        print(f"New key-word found: '{vocab_word}'")

    # Ask for the meaning and session of the vocabulary word
    vocab_meaning = input("Enter the meaning of the vocabulary word: ")
    vocab_session = input("Enter the session: ")

    # Update the data with the new information
    log.showComment("JSON","Writing to file'")
    data[vocab_word.lower()] = {
        "word"   : vocab_word.lower(),
        "meaning": vocab_meaning.lower(),
        "session": vocab_session.lower()
    }

    # Write the updated JSON data back to the file
    with open(filename, "w") as file:
        json.dump(data, file, indent=4)

    # Print a message indicating that the data was successfully saved
    print(f"'{vocab_word}' saved to '{filename}'")

    # display a single updated row
    log.showComment("Variable","Pasing '{}' to single_row() -> snippet_getFullTable.py".format(vocab_word.lower()))
    #print("[Sending] {} to func() single_row".format(vocab_word.lower()))
    callTableFunctions.single_row(vocab_word.lower())

print("Exiting program...")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.CHANGES MADE TO THE PREVIOUS CODE

Changes made:

1. Moved the import statement for json to the top of the file, since it's a common convention to import modules at the beginning of the file.
2. Changed the prompt for the vocabulary word to use lowercase letters, since the rest of the code uses lowercase.
3. Removed the commented out code for asking for the meaning and session of the vocabulary word, since it's not needed.
4. Added a check to see if the entered vocabulary word already exists in the data, and print a message accordingly.
5. Lowercased the vocab_meaning and vocab_session variables before adding them to the data, to ensure consistency.
6. Added a call to callTableFunctions.compact_table() after saving the data, to display a simple table of the data.

.LINK
   -> https://chat.openai.com/chat/

"""
