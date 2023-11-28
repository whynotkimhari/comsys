<#
Write a script which gets a file (parameter filename) and in each line there are 4 
numbers: 3 coordinates of a point (3D) and a radiant. Decide line by line which points 
are inside a sphere!
#>

param([Parameter(mandatory=$true)][string]$file)

$content = Get-Content $file

for($i = 0; $i -lt $content.Length; $i++) {
    $arr = $content[$i] -split ' '
    $x = [int]$arr[0]
    $y = [int]$arr[1]
    $z = [int]$arr[2]
    $r = [int]$arr[3]

    if($x*$x + $y*$y + $z*$z -le $r*$r) {
        Write-Host "Point at line $i is in the sphere(r=$r)"
    }
}