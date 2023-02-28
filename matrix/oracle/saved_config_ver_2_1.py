"""
import argparse

def setFilename(jsonfile):
    print("File name passsed : {}".format(jsonfile))
    return jsonfile

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="Hello", help="Text message to display ")
    args = parser.parse_args()
    setFilename(jsonfile=args.json)

"""
filename = "saved_vocabulary.json"

read_table_title = "Vocabulary"
update_table_title = "id Vocabulary"

# from file : formatted_table.py
# func full_table() Three Column Headers
read_full_table_column_header_1 = "Title"
read_full_table_column_header_2 = "Description"
read_full_table_column_header_3 = "No"

read_full_table_add_row_value_1st = "title"
read_full_table_add_row_value_2nd = "description"
read_full_table_add_row_value_3rd = "serial"
read_full_table_sort_by = "Title"




# saved_filename.json data structure
"""
{
    "egoist": {
        "word": "egoist",
        "meaning": "one's concept of oneself",
        "session": "1"
    },
    "egotist": {
        "word": "egotist",
        "meaning": "a person who talks excessively about them-self",
        "session": "2"
    }
}
"""
