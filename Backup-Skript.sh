
#Anwendungsfall: Sicherung wichtiger Verzeichnisse.

#!/bin/bash

# Quell- und Zielverzeichnisse
SOURCE="/home/user/documents"
DESTINATION="/mnt/backup/documents_backup_$(date +%Y%m%d)"

# Backup durchführen
rsync -av --delete $SOURCE $DESTINATION

echo "Backup abgeschlossen: $DESTINATION"
