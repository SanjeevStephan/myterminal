"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY

    
.RESPONSE


.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import json
import random

# fetch the dictionary

filename = "dictionary/saved_vocabulary.json"

# load the JSON data
with open(filename) as f:
    data = json.load(f)

# convert the dictionary to a list for easy random selection
word_list = list(data.items())

# shuffle the list for added randomness
random.shuffle(word_list)

# set initial score to 0
score = 0

# iterate through the words
for i, (word, info) in enumerate(word_list):
    # display the current question number and score
    print(f"\nQuestion {i+1} / {len(word_list)}")
    print(f"Current score: {score}")

    # prompt the user for the word's meaning
    print(f"What is the meaning of '{word}'? ")
    answer = input(f"Enter meaning :->")

    # check if the user's answer is correct
    if answer.lower() == info["meaning"].lower():
        print("Correct!")
        score += 1
    else:
        print(f"Incorrect. The correct meaning is '{info['meaning']}'.")

print("\nGame over!")
print(f"Final score: {score} / {len(word_list)}")

 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK


.LINK
   -> https://chat.openai.com/chat/

"""
