New-Item build -type Directory -Force

$app = "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe"

$intervals = 100,200,500,1000,1500,2000,4000
New-Item -ItemType Directory -Force -Path build
New-Item -ItemType Directory -Force -Path dist
Foreach ($i in $intervals)
{
    $filename = "ppt2png-$i"
    (Get-Content ppt2png.au3).replace('$interval = 1000', '$interval = ' + "$i") | Set-Content "build\$filename.au3"
    #Start-Process $app -ArgumentList "/in ppt2png-fast.au3 /out build\ppt2png-fast_x64.exe /icon camera.ico /nopack /x64"
    Start-Process $app -ArgumentList "/in build\$filename.au3 /out dist\$filename.exe /icon camera.ico /nopack /x86"
}