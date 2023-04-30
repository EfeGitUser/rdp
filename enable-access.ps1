Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
net.exe user $env:UserName "Password@001"
write-host Username: $env:UserName
write-host Password: Password@001
