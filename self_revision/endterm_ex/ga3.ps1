for($i = 1; $i -le 10; $i++) {
    for($j = 1; $j -le 10; $j++) {
        $ans = $i * $j
        Write-Host -NoNewLine "$ans "
    }
    Write-Host ""
}