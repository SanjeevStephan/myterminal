import wifi

# Scan for Wi-Fi networks
networks = wifi.scan()

# Print the results
for network in networks:
    print("SSID:", network.ssid)
    print("Signal strength:", network.signal)
    print("Channel:", network.channel)
    print("Encryption:", network.encryption)
    print("BSSID:", network.address)
    print("----------------------")

