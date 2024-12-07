
#Anwendungsfall: Installation von Programmen auf neuen Rechnern.

# Beispiel: Installation von Google Chrome
$installerPath = "C:\Installers\GoogleChromeStandaloneSetup.exe"
Start-Process -FilePath $installerPath -ArgumentList "/silent /install" -Wait

# Prüfen, ob die Installation erfolgreich war
if (Get-Process "chrome" -ErrorAction SilentlyContinue) {
    Write-Output "Google Chrome wurde erfolgreich installiert."
} else {
    Write-Output "Die Installation ist fehlgeschlagen."
}
