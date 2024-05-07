# Allowing Ping on a Windows Machine

To allow ping (ICMP Echo Request) on a Windows machine, execute the following PowerShell command:

```powershell
New-NetFirewallRule -DisplayName "Allow ICMP Echo Request" -Direction Inbound -Protocol ICMPv4 -IcmpType 8 -Action Allow -Enabled True
