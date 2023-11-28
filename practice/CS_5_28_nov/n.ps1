if ($args.Length -eq 0) {
    Write-Warning "Please enter"
    exit 1
}

$file = $args[0]

if(test-path $file) {
    $content = get-content $file
    $content | ForEach-Object{ $email = $content.Replace("[at]","@").Replace("[dot]",".") }

    Write-Output $email
}