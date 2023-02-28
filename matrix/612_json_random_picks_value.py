"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   python game to randomly pick 'value' from the json dictionary stored in the json file name "list_of_words.json" then ask the user to enter the 'key' associated with the value.
     every time user gives the correct answer respond it back with the score in the format "you got {} out of {} questions correct" and count the correct answer.
     if the user had wrong answer notify him with the correct answer saying "[Incorrect] The Answer is {} "
    
.RESPONSE
   Sure, I can help you create a Python game that randomly picks a value from a JSON dictionary stored in a file named "list_of_words.json"

.SYNTAX
   

.DESCRIPTION
 

.NOTE
   Note that the program will keep running until the user manually interrupts it (e.g. by pressing Ctrl+C).
    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""
import json
import random

with open('sample_words_lists.json') as f:
    word_dict = json.load(f)

score = 0
total_questions = 0

while True:
    word = random.choice(list(word_dict.values()))
    key = [k for k, v in word_dict.items() if v == word][0]

    answer = input(f"What is the key for '{word}'? ")

    if answer.lower() == key.lower():
        score += 1
        total_questions += 1
        print(f"[Correct] You got {score} out of {total_questions} questions correct.")
    else:
        total_questions += 1
        print(f"[Incorrect] The answer is '{key}'. You got {score} out of {total_questions} questions correct.")

 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
This code opens the "list_of_words.json" file, loads its contents into a dictionary called word_dict, and initializes the score and total_questions variables to 0. It then enters a loop that repeatedly picks a random value from the dictionary and asks the user for the corresponding key.

If the user's answer is correct, the program increments the score and total_questions variables and prints a message indicating the user's score so far. If the user's answer is incorrect, the program increments only the total_questions variable and prints a message indicating the correct answer and the user's score so far.

.LINK
   -> https://chat.openai.com/chat/

"""
