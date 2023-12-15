$arr = @(18,5,2004,26,12)

Write-Host "unsorted array is $arr"

$sortedArr = $arr | Sort-Object
$sorted = $arr | Sort-Object -Descending

Write-Host "sorted array is $sortedArr"

Write-Host "sorted array in DESC is $sorted"