Write-Host -NoNewLine "Please enter a decimal number: "
$num = Read-Host

$bin = ""

if([int]$num -le 0) {
    Write-Host "Please enter a positive number! "
    exit
}

Write-Host -NoNewLine "The binary form of $num is "

while($num -ne 0) {
    $bin = [string]($num % 2) + $bin
    $num = [math]::floor($num / 2)
}

Write-Host "$bin"