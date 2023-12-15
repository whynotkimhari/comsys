param([Parameter(mandatory=$true,position=0)][string]$file, [Parameter(mandatory=$true,position=1)][int]$n)

$neptuns = Get-Content $file

$passwords = @()


foreach($neptun in $neptuns) 
{

    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    $password = ""

    for($i=0; $i -lt $n; $i++) 
    {
        $password += $chars[(Get-Random -Minimum 0 -Maximum $chars.Length)]
    }

    $passwords += @{"neptun" =$neptun; pass=$password}
}

$passwords