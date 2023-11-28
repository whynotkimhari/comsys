<#
    Implement a script which gets names and phone numbers in a file (filename as 
parameter, last name, a space and the phone number per line) and copy that phone 
numbers which belong to a pre-defined last name (parameter) into the last.txt file!
#>

param(
    [Parameter(mandatory=$true, position=0)] [string]$file,
    [Parameter(mandatory=$true, position=1)] [string]$lastName
)

$content = Get-Content $file
$outFile = './last.txt'

if(Test-Path $outFile) {
    Clear-Content -Path $outFile
}

foreach($line in $content) {
    $arr = $line -split ' '
    $name = $arr[0]
    $phoneNo = $arr[1]

    if($name -eq $lastName) {
        Add-Content -Path $outFile -Value $phoneNo
    }
}