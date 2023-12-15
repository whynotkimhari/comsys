
param(
    [Parameter(mandatory=$true, position=0)] [int]$N,
    [Parameter(mandatory=$true, position=1)] [int]$M
)

if($M -le $N) {
    $var = $N
    $N = $M
    $M = $var
}

for($i=$N; $i -le $M; $i++) {
    if($i % 2 -eq 1) {
        Write-Host $i
    }
}