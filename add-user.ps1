New-LocalUser "rdp_user" -Password "rdpuser@001" -FullName "rdp_user" -Description "For RDP Connection"
Add-LocalGroupMember -Group "Administrators" -Member "rdp_user"
