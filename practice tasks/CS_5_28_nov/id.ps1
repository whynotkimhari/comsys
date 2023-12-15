param($inputFile,$output,$substr)

$neptun = Get-Content -Path $inputFile
$matches = $neptun | Where-Object {$_ -like "$substr"}
$matches | Out-File -FilePath $output