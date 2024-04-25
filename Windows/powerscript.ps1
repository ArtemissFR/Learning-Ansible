# Script PowerShell pour configurer une machine Windows en vue d'un déploiement Ansible

# Activer le partage WinRM
Enable-PSRemoting -Force

# Configurer le pare-feu pour permettre les connexions WinRM
Write-Host "Configuring Windows Firewall for WinRM..."
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -RemoteAddress Any
Set-NetFirewallRule -Name "WINRM-HTTP-In-TCP" -RemotePort 5985
Set-NetFirewallRule -Name "WINRM-HTTPS-In-TCP" -RemoteAddress Any
Set-NetFirewallRule -Name "WINRM-HTTPS-In-TCP" -RemotePort 5986

# Autoriser les exécutions de scripts PowerShell
Write-Host "Configuring PowerShell script execution policies..."
Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

# Activer le partage de fichiers (NetBIOS) si nécessaire
# Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"

# Redémarrer le service WinRM pour appliquer les modifications
Write-Host "Restarting WinRM service..."
Restart-Service WinRM

Write-Host "Configuration completed successfully."
