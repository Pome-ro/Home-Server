#!/usr/bin/powershell -Command

$dockerfolders = Get-ChildItem ../Docker/
foreach($folder in $dockerfolders){
    $dataExists = Test-Path (join-path $folder.FullName "data")
    if($dataExists){
        Write-Warning "Data folder exists."
    } else {
        New-Item -Type Directory -Name "data" -Path $folder.FullName | Out-Null
    }
}