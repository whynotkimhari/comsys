#myfile is param from the command
param($myfile)

$arr = @{"fs" = Get-Content $myfile}

Write-Host "Length of each line in $myfile "

$arr.Keys | foreach {$arr.$_.length}