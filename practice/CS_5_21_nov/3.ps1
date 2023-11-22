# add all vals of cmd args

$sum=0

for ($i=0; $i -le $args.Count; $i++) {
    $sum = $sum + $args[$i]
}

Write-Host "Sum of array is $sum"

$sum2 = 0

foreach($var in $args) {$sum2 += $var}

Write-Host "Sum of array using foreach is $sum2"