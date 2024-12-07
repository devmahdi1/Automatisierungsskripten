#Anwendungsfall: Suchen nach Fehlern in Logs.

logfile = "/var/log/system.log"

with open(logfile, "r") as file:
    for line in file:
        if "error" in line.lower():
            print(line.strip())
