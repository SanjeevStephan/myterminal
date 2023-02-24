import json


def readJson(filename):
    #filename = "saved_score.json"

    # Read the existing JSON data from the file
    with open(filename, "r") as file:
     data = json.load(file)

    # Print the JSON data to the console
    print("Existing JSON data:")
    print(json.dumps(data, indent=4))

filename = input("Enter the json file with (.json) :")    
readJson(filename)