# Specify the MAC address of the remote computer
$macAddress = "00:1f:d0:e9:f5:d4"
# 00:1f:d0:e9:f5:d4

# Convert the MAC address to a byte array
$macBytes = $macAddress.Split(":") | ForEach-Object { [byte]('0x' + $_) }

# Send the WoL packet to the remote computer
$wolClient = New-Object System.Net.Sockets.UdpClient
$wolClient.Connect(([System.Net.IPAddress]::Broadcast), 9)
$packet = [byte[]]::new(102)
for ($i = 0; $i -lt 6; $i++) {
    $packet[$i] = 0xFF
}
for ($i = 1; $i -le 16; $i++) {
    for ($j = 0; $j -lt 6; $j++) {
        $packet[$i * 6 + $j] = $macBytes[$j]
    }
}
$wolClient.Send($packet, $packet.Length)
$wolClient.Close()
