<#
    Implement a PowerShell program which gets a roman number and gives back its 
decimal value!
#>

param (
    [Parameter(mandatory=$true)] [string]$romanNum
)

$romanValues = @{
    'I' = 1
    'V' = 5
    'X' = 10
    'L' = 50
    'C' = 100
    'D' = 500
    'M' = 1000
}

$decimalValue = $romanValues[[string]$romanNum[$romanNum.Length - 1]]

for($i = 0; $i -lt $romanNum.Length - 1; $i++) {
                                                                                                            $curr = $romanValues[[string]$romanNum[$i]]
                                                                                                            $next = $romanValues[[string]$romanNum[$i + 1]]

                                                                                                            if($curr -lt $next) { $decimalValue -= $curr }
                                                                                                            else { $decimalValue += $curr }
                                                                                                        }

Write-Host $decimalValue