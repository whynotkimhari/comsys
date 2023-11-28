param($file, $thershold)

$data = Get-Content $file

foreach($line in $data) {
    $arr = $line.Split()
    if($arr[0].Length -gt $thershold) { $arr[0] }
}
