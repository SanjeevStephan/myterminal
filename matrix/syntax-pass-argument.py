import argparse



def setFilename(jsonfile):
    print("File name passsed : {}".format(jsonfile))
    return jsonfile

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="Hello", help="Text message to display ")
    args = parser.parse_args()
    setFilename(jsonfile=args.json)

