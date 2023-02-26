"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
display an option to stop play 
    
.RESPONSE
Sure, you can modify the Python script to allow the user to stop the audio playback by pressing a key. Here's the updated script that adds this feature:

.SYNTAX
   

.DESCRIPTION
 

.NOTE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example code snippet:
-------------------------------{ CODE_BELOW }-----------------------------"""


import subprocess
import time
import threading
import sys

vlc_path = "C:/Program Files/VideoLAN/VLC/vlc.exe"
audio_file = "y2mate.com - Imagine Dragons  Bones Official Music Video.mp3"

startupinfo = subprocess.STARTUPINFO()
startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW

def read_output(player):
    while True:
        output = player.stderr.readline().decode()
        if output == '' and player.poll() is not None:
            break
        if 'finished' in output.lower():
            break
        if 'time' in output.lower():
            time_left = output.split()[-1].strip()
            print("Time left:", time_left, end='\r')
    player.terminate()

player = subprocess.Popen([vlc_path, "--play-and-exit", audio_file], startupinfo=startupinfo, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

t = threading.Thread(target=read_output, args=(player,))
t.start()

print("Press any key to stop playback...")
while True:
    if t.is_alive() and sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
        input()
        player.terminate()
        break
    time.sleep(0.1)


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
This script launches the VLC media player process in the background without showing the player's window by using the subprocess.STARTUPINFO and subprocess.CREATE_NO_WINDOW flags. The script starts a separate thread to read the output of the VLC media player process and continuously display the time left until the audio file finishes playing. The script then waits for the user to press any key to stop the audio playback. Once the user presses a key, the script terminates the VLC media player process and exits the program.

Note that this script uses the select module to detect keyboard input from the user while the audio file is playing. The select module is only available on Unix-like platforms, so this feature may not work on Windows platforms. If you are running this script on Windows, you can remove the select module and use a different method to detect keyboard input from the user, such as polling the keyboard module or using a separate thread to read keyboard input.

.LINK
   -> https://chat.openai.com/chat/

"""
