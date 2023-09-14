# for-each: repeterar för allt i en lista. 

$names = @("Martin", "Jesper", "Alvin", "Jacob");

foreach($name in $names) {
    Write-Output "$name is the best gamer!";
}