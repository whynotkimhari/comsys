<#
Write a script which writes out a file (filename as parameter) content reverse. First line 
first word to last line last word…
#>

param([Parameter(mandatory=$true)][string]$file)

$content = Get-Content $file
$rev = ""

for($i = 0; $i -lt $content.Length; $i++) {
    $line = $content[$i]
    for($j = $line.Length - 1; $j -ge 0; $j--) {
        $rev += $line[$j]
    }
    $rev += "`n"
}

$rev