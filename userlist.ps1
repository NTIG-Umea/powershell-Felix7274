$users = import-Csv Userslist.csv | select *,username,mail,password

$characters = "abcdefghojklmnop1234567ABCDEFGHIJKL!#¤%&+?"
$password = ""


foreach ($user in $users) {
    $user.username = $user.firstname + "." + $user.lastname
    $user.mail = $user.firstname + "." + $user.lastname + "@gmail.com"
    $password = ""
    for ($i = 0; $i -lt 2; $i++) {
    $randomnum = Get-Random -Maximum 16
    $password += $characters[$randomnum]
 
    $randomnum = Get-Random -Minimum 17 -Maximum 22
    $password += $characters[$randomnum]

    $randomnum = Get-Random -Minimum 22 -Maximum 33
    $password += $characters[$randomnum]

    $randomnum = Get-Random -Minimum 33 -Maximum $characters.Length
    $password += $characters[$randomnum]
    }
    $user.password = $password
}    

$users
