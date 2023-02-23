import json

filename = "saved_score.json"

# Ask the user for module information
pymath_title = input("Enter the pymath title: ")
pymath_date = input("Enter the pymath date: ")
pymath_score = input("Enter the pymath score: ")

# Read the existing JSON data from the file
with open(filename, "r") as file:
    data = json.load(file)

# Add the new module information to the existing data
data[pymath_title] = {
    "desc": pymath_date,
    "syntax": pymath_score
}

# Write the updated JSON data back to the file
with open(filename, "w") as file:
    json.dump(data, file, indent=4)

# Print a message indicating that the data was successfully saved
print("Module information saved to list_of_modules.json")