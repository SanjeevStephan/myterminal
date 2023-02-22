import json
saved_score_path = "saved_score.json"

 # Load the last score from the JSON file
try:
    with open(saved_score_path, "r") as f:
        last_saved = json.load(f)

        # Accessing the values of the "substraction" key
        laste_date = last_saved["substraction"]["date"]
        last_score = last_saved["substraction"]["score"]
        print("On {} {}".format(laste_date,last_score))
        #print("[Saved]Last score on {} {}".format(last_score["date"], last_score["score"]))
except FileNotFoundError:
        print("No previous score found.")
        print("-"*30)