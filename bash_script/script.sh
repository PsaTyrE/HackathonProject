#!/bin/bash

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

# Iterate through the IDS rules and append them to the Snort configuration file
for rule in "${ids_rules[@]}"; do
    echo "$rule" >> /etc/snort/rules/local.rules
done

# Iterate through the firewall rules and execute them
for rule in "${firewall_rules[@]}"; do
    eval "$rule"
done

# Restart Snort service to apply the new IDS rules
service snort restart

# Save the firewall rules
iptables-save > /etc/iptables/rules.v4

# Restart the firewall service
service iptables restart
