author = "Sanjeev Stephan Murmu"
script_title="Window's Filter Batch Scripts"

import os
import prettytable
import function_show_figlet_message as fig
fig.show_figlet(script_title)

# create the dictionary
data = {
    "filter-n-copy-to-clipboard": {
        "serial_no":1,
        "released_date": "26-Feb-2023",
        "version": "v2.0",
        "accuracy":"90%"
    },
    "filter-n-open-it-in-notepad": {
        "serial_no":2,
        "released_date": "15-Feb-2023",
        "version": "90",
        "accuracy":""
    },
    "filter-pass-argument": {
        "serial_no":3,
        "released_date": "20-Feb-2023",
        "version": "85",
        "accuracy":""
    },
    "filter-only-syntax": {
        "serial_no":4,
        "released_date": "22-Feb-2023",
        "version": "99",
        "accuracy":""
    },
    "filter-syntax-n-open": {
        "serial_no":5,
        "released_date": "22-Feb-2023",
        "version": "99",
        "accuracy":""
    },

}

# create the table and add the data
table = prettytable.PrettyTable()
table.field_names = ["No","Script Title", "Date of Release", "Version","accuracy"]
for filter_scripts, values in data.items():
    table.add_row([values["serial_no"], filter_scripts.capitalize(), values["released_date"], values["version"], values["accuracy"]])

# display the table
print(table)
print("Script Wrote by {}".format(author))


#os.system("cmd.exe .\filter-only-syntax.bat")