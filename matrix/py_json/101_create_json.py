import json
import read_json

# Define the Sample JSON data
data = {
    "addition": {
        "date": " ",
        "score": ""
    },
    "substraction": {
        "date": "",
        "score": ""
    },
    "division": {
        "date": "",
        "score": ""
    },
    "multiplication": {
        "date": "",
        "score": ""
    }    
}

filename = "saved_score.json"
# Opens and Save the JSON to the file
with open(filename, "w") as f:
        json.dump(data, f, indent=4)
        print("Game Progess saved in '{}'".format(filename))

# Print the JSON string to the console
print(data)
read_json(filename)
#os.system("rm {}".format(filename))
#print("File {} Cleared Successfully".format(filename))