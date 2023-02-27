@echo off
python figlet.py --message "Pass Arguments"
python log.py --text "1st Argument Received : %1"
python log.py --text "2nd Argument Received : %2"