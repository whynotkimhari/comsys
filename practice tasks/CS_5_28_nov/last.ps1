$file = $args[0]
if(test-path $file) {
    $ff = get-content $file
}
$even = @()
$odd = @()

$c=1
foreach($line in $ff) {
    if($c % 2 -eq 0) {
        $even += $line
    }
    else {
        $odd += $line
    }
    $c++;
}

$even | out-file ./new_even.txt
$odd | out-file ./new_odd.txt