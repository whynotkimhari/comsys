Write-Host "The multiplication table: "

for($i=1; $i -le 10; $i++) {
    for($j=1; $j -le 10; $j++) {
        $var = $i * $j
        Write-Host -NoNewline "$i*$j=$var  "
    }
    Write-Host
}