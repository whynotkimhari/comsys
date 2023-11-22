# read the file and print out, if not print warning

param($myfile)

if(test-path $myfile) {
    $cont = Get-Content $myfile
    for($i=0; $i -le $cont.Length; $i++) {
        Write-Host ($i + 1) $cont[$i]
    }
}

else {
    Write-Warning "File not found!"
}