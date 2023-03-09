
import json
import importlib.util
import prettytable as prettyTable

def check4installPkgs(json_file_name) :
    # Read the existing JSON data from the file
    with open(json_file_name, "r") as file:
        data = json.load(file)

    # Print a table header
    print("{:<20} {:<20}".format("Module Name", "Status"))

    def is_module_installed(module_name):
        # TODO: Replace this with your code to check if the module is installed
        # For example, you could use the `importlib.util.find_spec` function to check if the module is importable
        module = importlib.util.find_spec(module_name)
        if module is None:
            return False
        else:
            return True



      # Create PrettyTable object with column names
    table = prettyTable.PrettyTable()
    table.field_names = ["Package", "Status"]

    # Iterate over each module in the data
    for module_name in data:
        # Check if the module is installed in the system
        if is_module_installed(module_name):
            module_status = "installed"
        else:
            module_status = "not installed"

        # Print the module name and status in the table
        #print("{:<20} {:<20}".format(module_name, module_status))
        table.add_row([module_name, module_status])

        # Add the status to the data dictionary
        data[module_name]["status"] = module_status
    print(table)
    # Write the updated JSON data back to the file
    with open(json_file_name, "w") as file:
        json.dump(data, file, indent=4)


    
