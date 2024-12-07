#Anwendungsfall: Überwachung der Erreichbarkeit von Netzwerkgeräten.

import os

ips = ["192.168.1.1", "192.168.1.2", "192.168.1.3"]

for ip in ips:
    response = os.system(f"ping -c 1 {ip}")
    if response == 0:
        print(f"{ip} ist erreichbar")
    else:
        print(f"{ip} ist nicht erreichbar")
