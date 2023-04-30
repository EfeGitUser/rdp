echo Adding User And Admin Access..
net user rdp_user rdpuser@001 /add
net localgroup administrators rdp /add
echo Enabling Remote Access..
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
echo Adding Token
.\ngrok.exe config add-authtoken 2OhI9NwNaO3Ky1yJKPbYR5Nq710_69Cs72CWeYoHmWKAzhQ9w
echo RDP Username And Pass:
echo Username: rdp_user
echo Pass: rdpuser@001
echo Opening TCP..
.\ngrok.exe tcp 3389
