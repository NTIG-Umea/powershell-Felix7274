$names = Import-Csv names.csv
$newuser = $username

foreach($name in $names) {
    $username = $name.firstname[0,1] + $name.lastname[0,1]
    $username = -join $username
    While(get-aduser -identity $newuser) {
        $counter++
        $newuser = $username + $counter
    }
    New-ADUser -Name "$newuser" -Path "OU=Felix Anvandare,DC=Walters,DC=Labb"
}
#7274