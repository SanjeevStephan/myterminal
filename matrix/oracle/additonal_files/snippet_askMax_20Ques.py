"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   keep asking upto 20 questions and if the user-want to exit then he need to enter 'exit' to quit
    
.RESPONSE
   Here's the updated code that will keep asking the user for the meanings of the words until they have answered 20 questions or they enter "exit" to quit:

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

# load the JSON data
with open("words.json") as f:
    data = json.load(f)

# convert the dictionary to a list for easy random selection
word_list = list(data.values())

# shuffle the list for added randomness
random.shuffle(word_list)

# set initial score to 0
score = 0

# ask up to 20 questions
for i, word in enumerate(word_list[:20]):
    # display the current question number and score
    print(f"\nQuestion {i+1} / 20")
    print(f"Current score: {score}")

    # prompt the user for the word's meaning
    answer = input(f"What is the meaning of '{word['word']}'? ")

    # allow the user to exit early
    if answer.lower() == "exit":
        break

    # check if the user's answer is correct
    if answer.lower() == word["meaning"].lower():
        print("Correct!")
        score += 1
    else:
        print(f"Incorrect. The correct meaning is '{word['meaning']}'.")

print("\nGame over!")
print(f"Final score: {score} / {i+1}") # note: i+1 will give the actual number of questions asked


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
 The changes made include modifying the word_list to include the "word" key for each word, and modifying the code to use word_list instead of data.items(). Other than that, the code works similarly to the previous version.

.LINK
   -> https://chat.openai.com/chat/

"""
