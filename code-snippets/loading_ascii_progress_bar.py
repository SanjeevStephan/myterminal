""" 
.SYNOPSIS
    
    ASCII Progress Bar

.DESCRIPTION
    
    This Python script . 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK
    https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html
    https://www.lihaoyi.com/post/BuildyourownCommandLinewithANSIescapecodes.html#ascii-progress-bar
.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
"""

import time, sys
def loading():
    print("Loading...")
    for i in range(0, 100):
        time.sleep(0.1)
        width = (i + 1) / 4
        bar = "[" + "#" * int(width) + " " * int((25 - width)) + "]"
        sys.stdout.write(u"\u001b[1000D" +  bar)
        sys.stdout.flush()
    print
    
loading()

"""
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\pyscripts\code_snippets> python .\loading_ascii_progress_bar.py
Loading...
[#########################]
-------------------------------|| HOW THE SCRIPT WORK ||--------------------

Now that we know how to make a self-updating progress bar using Ansi escape codes to control the terminal, it becomes relatively easy to modify it to be fancier, e.g. having a ASCII bar that goes across the screen:

This works as you would expect: every iteration of the loop, the entire row is erased and a new version of the ASCII bar is drawn
"""
