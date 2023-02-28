"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   keep adding new words as long as the user manually exit the script
    
.RESPONSE
   To allow the user to keep adding new words until they manually exit the script, you can wrap the existing code in a while loop that prompts the user for input and saves the data to the JSON file. Here's an updated version of the code that implements this:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json

filename = "dictionary/saved_test.json"

while True:
    # Ask the user for module information
    vocab_word = input("Enter the Vocabulary word (or 'exit' to quit): ")
    if vocab_word.lower() == "exit":
        break  # exit the loop if the user enters 'exit'
    
    vocab_meaning = input("Enter the Vocab word's meaning: ")
    vocab_session = input("Enter the session: ")

    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)

    # Add the new module information to the existing data
    data[vocab_word] = {
        "meaning": vocab_meaning,
        "session": vocab_session
    }

    # Write the updated JSON data back to the file
    with open(filename, "w") as file:
        json.dump(data, file, indent=4)

    # Print a message indicating that the data was successfully saved
    print(f"'{vocab_word}' saved to {filename}")

print("Exiting program...")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code uses a while loop that continues to prompt the user for input until they enter 'exit'. Within the loop, it reads the existing data from the JSON file, adds the new information to the data, and writes the updated data back to the JSON file. After each word is saved, the program prints a message indicating that the word was saved to the file. Finally, when the user enters 'exit', the program exits the loop and prints a message indicating that it is exiting.

.LINK
   -> https://chat.openai.com/chat/

"""
