<#
    Create a script which counts how much are the average length of the words in a file 
(filename in parameter)
#>

param([Parameter(mandatory=$true)][string]$file)

$content = Get-Content $file
$content = $content -split ' '

$sum = 0

foreach($word in $content) {
    $sum += $word.Length    
}

$avg = $sum / $content.Length
Write-Host $avg