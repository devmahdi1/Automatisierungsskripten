#Anwendungsfall: Updates auf Linux-Servern durchführen.

#!/bin/bash

# Update-Pakete und Upgrade
sudo apt update && sudo apt upgrade -y
echo "System erfolgreich aktualisiert."
