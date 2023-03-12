import socket

def get_ip_address():
    # Get the hostname
    hostname = socket.gethostname()

    # Get the IP address
    ip_address = socket.gethostbyname(hostname)

    return ip_address

# Call the function and print the IP address
print(get_ip_address())

