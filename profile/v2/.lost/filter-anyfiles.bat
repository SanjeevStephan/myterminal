@echo off
REM Send Logs to the Python File -> log.py


python D:\terminal\code-snippets\figlet.py --message "Filter %2"
python D:\terminal\code-snippets\log.py --text " Instructions => Follow the syntax below to filter anyfiles"
python D:\terminal\code-snippets\log.py --text " %%1 => Pass file.extensions such as (bat,py,ps1,json) and so on."
python D:\terminal\code-snippets\log.py --text " %%2 => Pass string to filter the filenames with "
python D:\terminal\code-snippets\log.py --text " anyfiles.* => pass '*' as the first agrument %%1  "
python D:\terminal\code-snippets\log.py --text " syntax => .\filter-files.bat %%1 %%2 "
python D:\terminal\code-snippets\log.py --text " example => .\filter-files.bat %1 %2 "

python D:\terminal\code-snippets\line.py --range 75
python D:\terminal\code-snippets\log.py --text " file-extension => %1 "
python D:\terminal\code-snippets\log.py --text " filter-text=> %2 "
python D:\terminal\code-snippets\log.py --text "Filtering filenames with text [%2] and extension [.%1]"

setlocal enabledelayedexpansion

python D:\terminal\code-snippets\line.py --range 75

for %%i in (*.%1) do (
    set "filename=%%i"
    if "!filename!"=="!filename:%2=!" (
        rem do nothing
    ) else (
        set /a count+=1
	echo [!count!] !filename!
        REM echo !count!. !filename!
	
        set "file[!count!]=!filename!"
    )
)

python D:\terminal\code-snippets\log.py --text " Total Files Found with name [%2]=> !count! "

