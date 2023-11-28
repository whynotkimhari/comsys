$cmd = $args[0]

$prcs = $args[1..($args.Length - 1)]

foreach($prc in $prcs) {
    $process = Get-Process -Name $prc -ErrorAction SilentlyContinue

    if($cmd -eq "start") {
        if($process) {
            Write-Host "$prc is already running"
        }
        else {
            Start-Process -FilePath $prc
            Write-Host "$prc is opened"
        }
    }
    elseif($cmd -eq "stop") {
        if($process) {
            Stop-Process -InputObject $process
            Write-Host "$prc is stopped"
        }
        else {
            Write-Host "$prc is already stop"
        }
    }
    else {
        Write-Host "Undefined command"
    }
}