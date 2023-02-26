"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
Imagine Dragons  Bones Official Music Video.mp3 play this song from the script in powershell and show the timeleft to finish playing 
    
.RESPONSE
Sure, here's an example Python script that uses VLC media player to play the audio file and display the time left to finish playing:

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

player = subprocess.Popen([vlc_path, "--play-and-exit", audio_file], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

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
Replace "Path/to/" with the actual path to the audio file on your computer. This script uses the subprocess module to launch VLC media player with the audio file as an argument and start playing the audio file. The script continuously reads the output of the VLC media player process and checks for the "time" and "finished" keywords to calculate the time left until the audio file finishes playing. The time left is displayed on the console using the print function. Note that this script assumes that the VLC media player is installed at "C:/Program Files/VideoLAN/VLC/vlc.exe". If your installation path is different, please update the vlc_path variable accordingly.

.LINK
   -> https://chat.openai.com/chat/

"""
