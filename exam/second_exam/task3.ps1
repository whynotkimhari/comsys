param([Parameter(mandatory=$true)][string]$file)
$out = "./same.txt"

if(Test-Path $out) {
    Clear-Content -Path $out
}

function isSym {
    param([string]$w)

    for($i = 0; $i -le ([int]$w.Length / 2); $i++) {
        if($w[$i] -ne $w[$w.Length -1 - $i]) {
            return $false
        }
    }
    return $true
}

$content = Get-Content $file
foreach($line in $content) {
    $arr = $line -split ' '
    foreach($word in $arr) {
        if(isSym $word -eq $true) {
            Add-Content -Path $out -Value $word
        }
    }
}