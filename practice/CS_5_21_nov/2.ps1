<# type way #>
$num1 = Read-Host "Please enter the first number"
$num2 = Read-Host "Please enter the second number"

$sum = [int]$num1 + [int]$num2

Write-Host "The sum in first way is $sum"

<# param way #>
$a = $args[0]
$b = $args[1]

Write-Host "The sum in second way is ($a+$b)"