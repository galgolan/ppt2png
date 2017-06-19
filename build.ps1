New-Item build -type Directory -Force

$app = "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe"
Start-Process $app -ArgumentList "/in ppt2png-fast.au3 /out build\ppt2png-fast_x64.exe /icon camera.ico /nopack /x64"
Start-Process $app -ArgumentList "/in ppt2png-slow.au3 /out build\ppt2png-slow_x64.exe /icon camera.ico /nopack /x64"

Start-Process $app -ArgumentList "/in ppt2png-fast.au3 /out build\ppt2png-fast_x86.exe /icon camera.ico /nopack /x86"
Start-Process $app -ArgumentList "/in ppt2png-slow.au3 /out build\ppt2png-slow_x86.exe /icon camera.ico /nopack /x86"