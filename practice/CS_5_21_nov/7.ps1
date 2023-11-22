param($n)

if([int]$n -le 0) {
    Write-Host "Please input the non-negative number only!"
    Exit 1
}

if($n.Length -ne 1) {
    Write-Host "Please input exactly one number!"
    Exit 1
}

$fact = 1
for($i=1; $i -le $n; $i++) {$fact *= $i}

Write-Host "The factorial of $n is $fact"

