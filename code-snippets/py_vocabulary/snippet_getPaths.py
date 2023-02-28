import json

filename = "config.json"
# Read the existing JSON data from the file
with open(filename, "r") as file:
    data = json.load(file)
    vocab = data["path"]["vocabulary"]
    print("Reading From 'getpaths.py' {}".format(vocab))