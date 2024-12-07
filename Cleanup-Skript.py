
#Anwendungsfall: Aufräumen von temporären Dateien.

import os
import shutil

temp_folders = [r"C:\Temp", r"C:\Windows\Temp"]
for folder in temp_folders:
    try:
        for file_or_folder in os.listdir(folder):
            path = os.path.join(folder, file_or_folder)
            if os.path.isfile(path) or os.path.islink(path):
                os.unlink(path)
            elif os.path.isdir(path):
                shutil.rmtree(path)
        print(f"Aufräumen abgeschlossen für {folder}")
    except Exception as e:
        print(f"Fehler bei {folder}: {e}")
