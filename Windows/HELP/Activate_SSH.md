# OpenSSH Installation and Configuration on Windows

## Prerequisites
Before getting started, ensure that PowerShell is being run as an administrator.

## Steps

1. Check if OpenSSH is available by running the following command in PowerShell:
   ```powershell
   Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
   ```

2. Install the OpenSSH Client by running the command:
   ```powershell
   Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
   ```

3. Install the OpenSSH Server by running the command:
   ```powershell
   Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
   ```

4. Start the sshd service:
   ```powershell
   Start-Service sshd
   ```

5. *(Optional)* Configure the sshd service to start automatically:
   ```powershell
   Set-Service -Name sshd -StartupType 'Automatic'
   ```

6. Check if the firewall rule is configured. If it doesn't exist, create it:
   ```powershell
   if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
       Write-Output "The firewall rule 'OpenSSH-Server-In-TCP' does not exist, creating..."
       New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
   } else {
       Write-Output "The firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
   }
   ```

7. Connect to the machine via SSH by replacing `username` with your username and `ip` with the machine's IP address:
   ```bash
   ssh username@ip
   ```

## Bonus

If you wish to uninstall the SSH services later, you can do so by following these steps:

1. Uninstall the OpenSSH Client:
   ```powershell
   Remove-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
   ```

2. Uninstall the OpenSSH Server:
   ```powershell
   Remove-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
   ```

## Source

This guide is based on Microsoft's official documentation for the initial installation and configuration of OpenSSH on Windows. You can find more information on [Microsoft's website](https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse).
