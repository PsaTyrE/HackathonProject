# Define the list of IDS rules
alert tcp any any -> 192.168.10.0 23 (msg: "Ada yang telnet ke mesin!"; sid:1000001;)
