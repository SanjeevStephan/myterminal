@echo off
python neo\figlet.py --message "Log Display"
python neo\log.py --text "To Use python log.py --text 'Text to Display As Log'"
python neo\log.py --text "To Use python log.py --text ' .\log-display.bat text-to-display-here'
python neo\log.py --text "You Have Entered Text : %1"

