# Define the list of IDS rules
ids_rules=(
    "alert tcp any any -> 192.168.10.0 any (msg:\"Example IDS rule 1\"; content:\"example content\";)"
    "alert udp any any -> 192.168.10.0 any (msg:\"Example IDS rule 2\"; content:\"example content\";)"
    # Add more IDS rules as needed
)

# Define the list of firewall rules
firewall_rules=(
    "iptables -A INPUT -p tcp --dport 22 -j ACCEPT"
    "iptables -A INPUT -p tcp --dport 80 -j ACCEPT"
    "iptables -A INPUT -p tcp --dport 443 -j ACCEPT"
    # Add more firewall rules as needed
)

