# Activation du service SSH sur Windows

Ce guide détaille les étapes nécessaires pour activer le service SSH sur un système Windows à l'aide de PowerShell.

## Prérequis

Avant de commencer, assurez-vous que PowerShell est exécuté en tant qu'administrateur.

## Étapes

1. Vérifiez si OpenSSH est disponible en exécutant la commande suivante dans PowerShell :

    ```powershell
    Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
    ```

2. Installez le Client OpenSSH en exécutant la commande :

    ```powershell
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    ```

3. Installez le Serveur OpenSSH en exécutant la commande :

    ```powershell
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    ```

4. Démarrez le service sshd :

    ```powershell
    Start-Service sshd
    ```

5. (Optionnel) Configurez le service sshd pour qu'il démarre automatiquement :

    ```powershell
    Set-Service -Name sshd -StartupType 'Automatic'
    ```

6. Vérifiez si la règle du pare-feu est configurée. Si elle n'existe pas, créez-la :

    ```powershell
    if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
        Write-Output "La règle du pare-feu 'OpenSSH-Server-In-TCP' n'existe pas, création en cours..."
        New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
    } else {
        Write-Output "La règle du pare-feu 'OpenSSH-Server-In-TCP' a été créée et existe."
    }
    ```

7. Connectez-vous à la machine via SSH en remplaçant `username` par votre nom d'utilisateur et `ip` par l'adresse IP de la machine :

    ```bash
    ssh username@ip
    ```

## Bonus

Si vous souhaitez désinstaller les services SSH ultérieurement, vous pouvez le faire en suivant ces étapes :

1. Désinstallez le Client OpenSSH :

    ```powershell
    Remove-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    ```

2. Désinstallez le Serveur OpenSSH :

    ```powershell
    Remove-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    ```

## Source

Ce guide est basé sur la documentation officielle de Microsoft pour l'installation et la configuration initiale d'OpenSSH sur Windows. Vous pouvez trouver plus d'informations sur [le site de Microsoft](https://learn.microsoft.com/fr-fr/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell).

