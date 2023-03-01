@echo off
cd D:\terminal\matrix\oracle\timetable
cls
python ..\..\..\matrix\neo\figlet.py --message "Timetable for"
python ..\..\..\matrix\neo\figlet.py --message "Mon Wed Fri"
python ..\..\..\matrix\neo\log.py --text "You Have Selected Option 2 (Time-Table for Monday, Wednesday, Friday)"
python prettytable_menu_v4_0.py --json timetable_mon_wed_friday.json
