
#Anwendungsfall: Daten von einer API abrufen.

import requests

url = "https://api.example.com/data"
response = requests.get(url)

if response.status_code == 200:
    data = response.json()
    print(data)
else:
    print(f"Fehler beim Abrufen: {response.status_code}")
