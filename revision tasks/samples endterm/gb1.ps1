<#
    Write a PowerShell script which calculates the values of ax3+bx2+cx+d polinom 
between N and M (only at integer values)! A,b,c and d should be read from keyboard!
#>

param(
    [Parameter(mandatory=$true,position=0)] [int] $a,
    [Parameter(mandatory=$true,position=1)] [int] $b,
    [Parameter(mandatory=$true,position=2)] [int] $c,
    [Parameter(mandatory=$true,position=3)] [int] $d
)

$n = 2
$m = 3

for($i = $n; $i -le $m; $i++) {
    $val = $a*[math]::pow($i,3) + $b*[math]::pow($i,2) + $c*$i + $d
    Write-Host -NoNewLine "$val "
}