param($file)

$cont = get-content $file

for($i=0; $i -lt $cont.Length; $i++) {
    $line = $cont[$i]

    $first = $line.Split()[0]
    $second = $line.Split()[1]

    Write-Host $second $first
}