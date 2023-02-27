@echo off
python figlet.py --message "Log Display"
python log.py --text "To Use python log.py --text 'Text to Display As Log'"
python log.py --text "To Use python log.py --text ' .\log-display.bat text-to-display-here'
python log.py --text "You Have Entered Text : %1"

