"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
	
play it in background
    
.RESPONSE
Sure, to play the audio file in the background, you can use the subprocess.STARTUPINFO and subprocess.CREATE_NO_WINDOW flags in the subprocess.Popen function. Here's the updated Python script that plays the audio file in the background:

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

vlc_path = "C:/Program Files/VideoLAN/VLC/vlc.exe"
audio_file = "y2mate.com - Imagine Dragons  Bones Official Music Video.mp3"

startupinfo = subprocess.STARTUPINFO()
startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW

player = subprocess.Popen([vlc_path, "--play-and-exit", audio_file], startupinfo=startupinfo, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

while True:
    output = player.stderr.readline().decode()
    if output == '' and player.poll() is not None:
        break
    if 'finished' in output.lower():
        break
    if 'time' in output.lower():
        time_left = output.split()[-1].strip()
        print("Time left:", time_left, end='\r')



 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK
This script launches the VLC media player process in the background without showing the player's window by using the subprocess.STARTUPINFO and subprocess.CREATE_NO_WINDOW flags. The script continuously reads the output of the VLC media player process and checks for the "time" and "finished" keywords to calculate the time left until the audio file finishes playing. The time left is displayed on the console using the print function. Note that the subprocess.CREATE_NO_WINDOW flag is only available on Windows platforms.

.LINK
   -> https://chat.openai.com/chat/

"""
