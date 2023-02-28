@echo off
setlocal enabledelayedexpansion
set scriptname="Syntax Filter"

python neo\figlet.py --message %scriptname%
python neo\line.py --range 75

set extension=%1
set substring=%2

if "%extension%"=="" (
    echo No argument passed.
    REM echo Try 
    pause
    exit /b
)

echo Extension to look for first : %extension%
echo Substring to Filter : %substring%

python line.py --range 75

REM Filter Every fles for Specific extension and substring
for %%i in (*.%extension%) do (
    set "filename=%%i"
    if "!filename!"=="!filename:%substring%=!" (
        rem do nothing
    ) else (
        set /a count+=1
	echo [!count!] !filename!
        REM echo !count!. !filename!
	
        set "file[!count!]=!filename!"
	
    )
)

echo "Total Files Found with name [%2]=> !count!"

