@echo off

set first_argument=%1
set second_argument=%2

python neo\figlet.py --message "Pass Arguments"
python neo\log.py --text " Syntax : .\syntax-pass-arguments.bat hello world"
python neo\log.py --text "1st Argument Received : %first_argument%"
python neo\log.py --text "2nd Argument Received : %second_argument%"