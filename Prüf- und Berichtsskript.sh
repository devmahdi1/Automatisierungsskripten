#Anwendungsfall: Überprüfung des freien Speicherplatzes und Bericht per E-Mail senden.


#!/bin/bash

# Speicherplatz prüfen
disk_usage=$(df -h / | tail -1 | awk '{print $5}')

# Bericht erstellen
echo "Der aktuelle Speicherplatzverbrauch auf / beträgt $disk_usage" > /tmp/disk_report.txt

# Bericht per E-Mail senden (Postfix oder ähnliche Dienste nötig)
mail -s "Disk Report" user@example.com < /tmp/disk_report.txt
