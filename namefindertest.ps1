$username = "felix7274"
$newuser = $username
$counter = 1

While(get-aduser -identity $newuser) {
    $counter++
    $newuser = $username + $counter
}
New-aduser "$newuser"