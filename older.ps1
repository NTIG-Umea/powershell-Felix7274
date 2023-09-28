#[int]$age = Read-Host("What's your age?")

$nummer = 17

Write-output "What's your age?";
$gissning = read-host;

if($nummer -eq $gissning){ 
    Write-Output "You are the same age as me";
}

if($nummer -lt $gissning){ 
    Write-Output "You are older than me";
}

if($nummer -gt $gissning){ 
    Write-Output "You are younger than me";
}
#If(i$ -gt 17;) {
 #  Write-Output "You are older than me"}

#elseif() {}

#else() {}