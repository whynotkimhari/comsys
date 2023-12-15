$date = "27/12/2023"
$start = Get-Date $date
$end = $start.AddDays(5)

$list = gci

foreach($file in $list) {
    if($file.LastWriteTime -ge $start -and $file.LastWriteTime -lt $end) {
        write $file
    }
}