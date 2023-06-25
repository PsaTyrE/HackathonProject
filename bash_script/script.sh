# Define the list of IDS rules
alert tcp any any -> 192.168.10.0 any (msg:\"Example IDS rule 1\"; content:\"example content\";)
alert udp any any -> 192.168.10.0 any (msg:\"Example IDS rule 2\"; content:\"example content\";)
