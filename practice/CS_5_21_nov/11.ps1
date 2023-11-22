param(
    [Parameter(mandatory=$true,position=0)] [double]$a,
    [Parameter(mandatory=$true,position=1)] [double]$b,
    [Parameter(mandatory=$true,position=2)] [double]$c
)

$d = [math]::pow($b,2) - 4 * $a * $c

if($d -lt 0) {
    Write-Host "This equation has no root!"
}

elseif($d -eq 0) {
    $root = -($b/(2*$a))
    Write-Host "The equation has double-root, that is $root"
}

else {
    $fr = (-$b + [math]::Sqrt($d))/(2*$a)
    $sr = (-$b - [math]::Sqrt($d))/(2*$a)

    Write-Host "The equation has two roots, which is $fr and $sr"
}