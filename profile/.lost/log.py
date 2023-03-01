# log.py
import argparse
import pyfiglet

def print_text(message):
    print("[LOG] {}".format(message))

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--text", type=str, default="Hello", help="Text message to display ")
    args = parser.parse_args()
    print_text(message=args.text)
