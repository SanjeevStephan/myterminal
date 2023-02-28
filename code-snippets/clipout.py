import argparse
import pyperclip

def paste_to_clipboard(message):
    # Copy the Text to the Clipboard Literally 
    pyperclip.copy(message)
    print("[COPIED] {} to the Clipboard !".format(message))

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--text", type=str, default="Hello", help="Text message to sent to clipboard")
    args = parser.parse_args()
    paste_to_clipboard(message=args.text)


