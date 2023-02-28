import json
import config
from additonal_files import snippet_getFullTable as snippetTable

filename = config.filename

snippetTable.showInstructions()   
#snippetTable.showFiglet("Add Vocabulary")
#snippetTable.showInstructions()

snippetTable.compact_table() # display a simple table

while True:
    # Ask the user for module information
    vocab_word = input("Enter the Vocabulary word (or 'exit' to [q]uit): ")

    if vocab_word.lower() == "exit":
        break  # exit the loop if the user enters 'exit'
    elif vocab_word.lower() == "q":
        break

    vocab_meaning = input("Enter the Vocab word's meaning: ")
    vocab_session = input("Enter the session: ")

    # Read the existing JSON data from the file
    with open(filename, "r") as file:
        data = json.load(file)


    # Convert the Words into lower-case alphabets
    vocab_word = vocab_word.lower()
    vocab_meaning = vocab_meaning.lower()

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
    print("Module information saved to list_of_modules.json")
    

print("Exiting program...")



#-------------------{ How the Script Works }----------------
"""
The code you provided seems to be a program that allows the user to input vocabulary words and their meanings, 
and saves the data to a JSON file. The program prompts the user to input the vocabulary word, meaning, and session,
and then reads the existing data from the JSON file, adds the new information to the data, and
writes the updated data back to the JSON file.

This code uses a while loop that continues to prompt the user for input until they enter 'exit'.
Within the loop, it reads the existing data from the JSON file, adds the new information to the data, and
writes the updated data back to the JSON file. After each word is saved, the program prints a message indicating that
the word was saved to the file. Finally, when the user enters 'exit', the program exits the loop and prints a message indicating that it is exiting.

"""