"""
.SYNOPSIS
    


.DESCRIPTION
    
    This PowerShell script . 
    
.PARAMETER

    

.EXAMPLE
    
    
     
.AUTHOR
    
    -Sanjeev Stephan Murmu

.LINK

.NOTES
    

.
-------------------------------|| CODE_BELOW ||-----------------------------
"""

import time, sys
def loading():
    time_in_seconds=0.1
    print ("Loading...")
    for i in range(0, 100):
        time.sleep(time_in_seconds)
        sys.stdout.write(u"\u001b[1000D")
        sys.stdout.flush()
        time.sleep(1)
        sys.stdout.write(str(i + 1) + "%")
        sys.stdout.flush()
    print
    
loading()

"""
-------------------------------|| CODE_ABOVE ||-----------------------------
------------------------------|| TERMINAL LOG ||----------------------------

PS D:\terminal>


-------------------------------|| HOW THE SCRIPT WORK ||--------------------

This prints the text from 1% to 100%, all on the same line since it uses stdout.write rather than print. However, before printing each percentage it first prints \u001b[1000D, which means "move cursor left by 1000 characters). This should move it all the way to the left of the screen, thus letting the new percentage that gets printed over-write the old one. Hence we see the loading percentage seamlessly changing from 1% to 100% before the function returns:


"""
