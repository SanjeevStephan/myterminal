import json
import pkg_manager_config as config
import importlib.util
import subprocess

# Define all the refrerences
json_filename = config.json_filename
script_name  = config.script_name

def begin_installing_pkgs():
    print("Json file name {}".format(json_filename))
    # Read the JSON data from the file
    with open(json_filename, "r") as file:
        data = json.load(file)

    # Print a table header
    print("{:<20} {:<20}".format("Module Name", "Status"))    

    # Iterate over each module in the data
    for module_name in data:
        # Check if the module is installed
        if not importlib.util.find_spec(module_name):
            # The module is not installed, so install it
            print(f"Installing {module_name}...")
            subprocess.check_call(["pip", "install", module_name])

            # Update the status in the data dictionary
            data[module_name]["status"] = "installed"

    # Write the updated JSON data back to the file
    with open(json_filename, "w") as file:
        json.dump(data, file, indent=4)
