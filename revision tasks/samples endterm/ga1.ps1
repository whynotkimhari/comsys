param(
    [Parameter(mandatory=$true,position=0)] [int] $n
)

$a = 1
$b = 1

if($n -le 0) {
    exit
}

elseif($n -eq 1) {
    Write-Host 1
}

elseif($n -eq 2) {
    Write-Host 1 1
}

else {
    Write-Host -NoNewLine "$a $b "
    for($i = 0; $i -lt $n - 2; $i++) {
        $c = $a + $b
        Write-Host -NoNewLine "$c "
        $a = $b
        $b = $c
    }
}