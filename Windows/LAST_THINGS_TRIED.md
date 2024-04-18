
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

## Configuration d'Ansible pour se connecter à des machines Windows

1. Accédez au répertoire Ansible :

```bash
cd /etc/ansible/
```

2. Créez un répertoire `group_vars` si ce n'est pas déjà fait :

```bash
mkdir group_vars

cd group_vars/
```

3. Définissez votre éditeur par défaut (par exemple nano) pour éditer des fichiers :

```bash
export EDITOR='/usr/bin/nano'
```

4. Créez un fichier chiffré `windows.yml` pour stocker les informations d'authentification Windows :

```bash
ansible-vault create windows.yml
```

5. Ajoutez les informations d'authentification dans `windows.yml` :

```yaml
ansible_ssh_user: [user]
ansible_ssh_pass: [password]
ansible_ssh_port: 5986
ansible_connection: winrm
```

6. Utilisez Ansible pour tester la connexion avec la machine Windows :

```bash
ansible windows -m win_ping --ask-vault-pass
```

---

N'oubliez pas de remplacer `[user]` et `[password]` par vos informations d'identification Windows appropriées dans le fichier `windows.yml`.

Ces étapes devraient vous aider à configurer votre environnement Ansible pour gérer à la fois des machines Windows et Linux de manière efficace. N'hésitez pas à ajuster les détails en fonction de votre configuration spécifique et des exigences de sécurité de votre environnement.
