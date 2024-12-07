#Anwendungsfall: Automatische Erstellung von Benutzerkonten in Active Directory.

# Benutzerverwaltungsskript
Import-Module ActiveDirectory

# Beispiel: Liste neuer Benutzer aus einer CSV-Datei importieren
$users = Import-Csv "C:\Users\NewUsers.csv"

foreach ($user in $users) {
    New-ADUser -Name $user.Name `
               -GivenName $user.FirstName `
               -Surname $user.LastName `
               -SamAccountName $user.Username `
               -UserPrincipalName "$($user.Username)@domain.local" `
               -Path "OU=Users,DC=domain,DC=local" `
               -AccountPassword (ConvertTo-SecureString "Passwort123!" -AsPlainText -Force) `
               -Enabled $true
    Write-Output "Benutzer $($user.Username) wurde erstellt."
}
