# Define the list of IDS rules
alert icmp any any <> 192.168.0.232 any (msg:"Ada yang ECHO PING"; icode:0; itype:8; sid: 1000002; )
alert icmp any any <> 192.168.0.232 any (msg:"Ada yang ECHO REPLY PING"; icode:0; itype:0; sid: 1000003; )
