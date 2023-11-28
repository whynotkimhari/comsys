<#
Create a PowerShell script which writes out the odd numbers between N and M 
(parameters)! Check whether N is smaller than M or not – if not, change their values
#>

param(
    [Parameter(mandatory=$true, position=0)] [int]$N,
    [Parameter(mandatory=$true, position=1)] [int]$M
)

if($N -gt $M) {
    $var = $N
    $N = $M
    $M = $var
}

for($i = $N; $i -le $M; $i++) {
    if($i % 2 -eq 1) {
        Write-Host "$i "
    }
}