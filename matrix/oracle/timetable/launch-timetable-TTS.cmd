@echo off
cd D:\terminal\matrix\oracle\timetable
cls
python ..\..\..\matrix\neo\figlet.py --message "Timetable for"
python ..\..\..\matrix\neo\figlet.py --message "Tue Thru Sat"
python ..\..\..\matrix\neo\log.py --text "You Have Selected Option 2 (Time-Table for Tuesday, Thursday, Saturday)"
python prettytable_menu_v4_0.py --json timetable_tue_thru_sat.json	
