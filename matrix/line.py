# filename -> line.py
# syntax   -> python .\line.py --range 75
import argparse

def print_line(range):
    print("-"*range)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--range", type=int, default=75, help="Text message to display ")
    args = parser.parse_args()
    print_line(range=args.range)