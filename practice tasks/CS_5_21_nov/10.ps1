<#
param([int]$age, [string]$name, [double]$fee)

$limit = 4

for($i = 0; $i -le $limit; $i++) {
    Write-Host $age $name $fee
}
#>

# type ./tenth.ps1 and enter

param(
    [Parameter(mandatory=$true,position=0)] [string]$name,
    [Parameter(mandatory=$true,position=1)] [int]$b,
    [Parameter(mandatory=$true,position=2)] [double]$d
)

Write-Host $name $b $d