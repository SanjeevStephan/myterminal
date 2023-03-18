@echo off
python py/figlet.py --message "node_js server"
echo Press (CTRL+C) to Terminate
brave http://localhost:3000/
node server.js
