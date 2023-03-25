##  Python script that can be used to wake up a PC over LAN using Wake-on-LAN (WoL) technology:
```
import socket
import struct

# Enter the MAC address of the target PC
mac_address = '00:11:22:33:44:55'

# Create a socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Set the socket options
sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

# Build the magic packet
packet = b'\xff' * 6 + (mac_address.replace(':', '') * 16).encode()

# Send the packet to the broadcast address
sock.sendto(packet, ('<broadcast>', 9))

# Close the socket
sock.close()
```
      
Replace the mac_address variable with the MAC address of the target PC that you want to wake up.
The script builds a magic packet using the MAC address and sends it to the broadcast address on port 9 (which is the default port for WoL packets).

Note that for this script to work, Wake-on-LAN must be enabled in the BIOS of the target PC, and the network adapter must also support it.
 Additionally, the PC should be in a sleep or hibernation state for this to work, and it should be connected to the same LAN as the machine running this script.     