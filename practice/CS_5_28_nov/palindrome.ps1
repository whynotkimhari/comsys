param([string]$src)

write-host $src

$tmp = $src.ToCharArray()
$rev = [array]::Reverse($tmp)
$final = -join ($tmp)

write-host $final

if($src -match $final) {
    write-host "Its palindrome"
}

else {
    write-host "It is not a palindrome"
}