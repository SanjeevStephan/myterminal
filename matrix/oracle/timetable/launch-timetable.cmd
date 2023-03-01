@echo off
cd D:\terminal\matrix\oracle\timetable
python ..\..\..\matrix\neo\figlet.py --message "Launch Timetable"
python ..\..\..\matrix\neo\log.py --text " Enter Below Option to continue "
python ..\..\..\matrix\neo\log.py --text " 1. Time-Table for Monday, Wednesday, Friday "
python ..\..\..\matrix\neo\log.py --text " 2. Time-Table for Tuesday, Thursday, Saturday "

set /p choice="Enter your choice: "

if "%choice%"=="1" (
    cls
    python ..\..\..\matrix\neo\figlet.py --message "Timetable for"
    python ..\..\..\matrix\neo\figlet.py --message "Mon Wed Fri"
    python ..\..\..\matrix\neo\log.py --text "You Have Selected Option 2 (Time-Table for Monday, Wednesday, Friday)"
    python prettytable_menu_v4_0.py --json timetable_mon_wed_friday.json
) else if "%choice%"=="2" (
    cls
    python ..\..\..\matrix\neo\figlet.py --message "Timetable for"
    python ..\..\..\matrix\neo\figlet.py --message "Tue Thru Sat"
    python ..\..\..\matrix\neo\log.py --text "You Have Selected Option 2 (Time-Table for Tuesday, Thursday, Saturday)"
    python prettytable_menu_v4_0.py --json timetable_tue_thru_sat.json	
) else (
    echo You have selected an invalid option.
)
