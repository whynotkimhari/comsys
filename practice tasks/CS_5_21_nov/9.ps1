$r = Read-Host "Please type a radius "
$area = [math]::pow($r,2) * [math]::PI

Write-Host "The area of circle with radius $r is $area"