#Anwendungsfall: Überwachung der Erreichbarkeit von Netzwerkgeräten.

#!/bin/bash

# Liste der IP-Adressen
ips=("192.168.1.1" "192.168.1.2" "192.168.1.3")

for ip in "${ips[@]}"
do
    if ping -c 1 $ip &> /dev/null
    then
        echo "$ip ist erreichbar"
    else
        echo "$ip ist nicht erreichbar"
    fi
done
