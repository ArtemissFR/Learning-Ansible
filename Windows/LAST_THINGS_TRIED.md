
# Configuration d'Ansible pour Windows et Linux

## Configuration de Windows pour Ansible

### Activer WinRM sur la machine cible Windows :

```powershell
Enable-PSRemoting -Force

Set-Item WSMan:\localhost\Client\TrustedHosts *

Restart-Service winrm

winrm set winrm/config/client/auth '@{Basic="true"}'

winrm set winrm/config/service/auth '@{Basic="true"}'
```

### Télécharger et exécuter le script de configuration pour Ansible sur Windows :

Téléchargez le script [configure-ansibletarget.ps1](https://gist.github.com/trondhindenes/b9b5b25b11273cc35659) et exécutez-le :

```powershell
Set-ExecutionPolicy Unrestricted

powershell.exe ./configure-ansibletarget.ps1
```

### Autoriser WinRM à travers le pare-feu Windows :

```powershell
netsh advfirewall firewall add rule Profile=Domain name="Autoriser WinRM HTTPS" dir=in localport=5986 protocol=TCP action=allow
```

---

N'oubliez pas de remplacer `[user]` et `[password]` par vos informations d'identification Windows appropriées dans le fichier `windows.yml`.

Ces étapes devraient vous aider à configurer votre environnement Ansible pour gérer à la fois des machines Windows et Linux de manière efficace. N'hésitez pas à ajuster les détails en fonction de votre configuration spécifique et des exigences de sécurité de votre environnement.

# ERREUR :

```powershell
10.1.2.204 | UNREACHABLE! => {
    "changed": false,
    "msg": "basic: HTTPSConnectionPool(host='10.1.2.204', port=5986): Max retries exceeded with url: /wsman (Caused by ConnectTimeoutError(<urllib3.connection.HTTPSConnection object at 0x7004c75c2b90>, 'Connection to 10.1.2.204 timed out. (connect timeout=30)'))",
    "unreachable": true
}
```
