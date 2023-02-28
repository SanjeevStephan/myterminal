@echo off
REM Send Logs to the Python File -> log.py

python figlet.py --message "Filter Anyfiles Version 2.0"
python log.py --text " Released Date => 28 Feb 2023"
python log.py --text " Instructions => Follow the syntax below to filter anyfiles"
python log.py --text " %%1 => Pass file.extensions such as (bat,py,ps1,json) and so on."
python log.py --text " %%2 => Pass string to filter the filenames with "
python log.py --text " anyfiles.* => pass '*' as the first agrument %%1  "
python log.py --text " syntax => .\filter-files.bat %%1 %%2 "
python log.py --text " example => .\filter-files.bat %1 %2 "

python line.py --range 75

REM check if first command-line-argument is passed or not 
if "%1"=="" (
    echo No argument passed.
    pause
    exit /b
)

python figlet.py --message "Filtering %2"
python log.py --text " file-extension => %1 "
python log.py --text " filter-text=> %2 "
python log.py --text "Filtering filenames with text [%2] and extension [.%1]"

setlocal enabledelayedexpansion

python line.py --range 75

@echo off
setlocal enabledelayedexpansion

set "ext=%1"
set "match=%2"
set "count=0"

rem Get list of files with specified extension
for %%i in (*.%ext%) do (
    set "filename=%%i"
    if "!filename!"=="!filename:%match%=!" (
        rem File doesn't contain match string
    ) else (
        set /a count+=1
        echo [!count!] !filename!
        set "file[!count!]=!filename!"
    )
)

python log.py --text " Total Files Found with name [%2]=> !count! "

rem Prompt user to select a file by index number
set /p index="Enter the index number of the file you want to copy its filename :"

rem Copy selected file to clipboard
set "selected_file=!file[%index%]!"
REM type "!selected_file!" | clip



echo Filename !selected_file! have been sent to clipout.py 

python clipout.py --text !selected_file!


