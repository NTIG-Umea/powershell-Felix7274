$characters = "abcdefghojklmnop1234567ABCDEFGHIJKL!#¤%&+?"
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




Write-Output $password