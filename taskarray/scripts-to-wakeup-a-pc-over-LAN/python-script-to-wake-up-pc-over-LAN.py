import socket

# Specify the MAC address of the remote computer
mac_address = "00:1f:d0:e9:f5:d4"

# Convert the MAC address to a byte string
mac_bytes = bytes.fromhex(mac_address.replace(":", ""))

# Send the WoL packet to the remote computer
with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    s.sendto(b"\xff" * 6 + mac_bytes * 16, ("<broadcast>", 9))

