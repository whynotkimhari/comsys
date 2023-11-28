 
param($file)
$cont = get-content $file

<#
way 1

for($i=0; $i -lt $cont.Length; $i++) {
    $line = $cont[$i]

    $first = $line.Split()[0]
    $second = $line.Split()[1]

    Write-Host $second $first
}
#>

<#
way 2
$cont | ForEach-Object {$_.split()[1] + " " + $_.split()[0]}
#>