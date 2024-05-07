# Ansible X Windows

## Lancer le script de configuration Windows pour Ansible

1. Télécharger le script depuis le site officiel ou utiliser celui donner dans le playbook :

    **Site officiel** : https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#winrm-setup

2. (Optionnel) Pour ne pas avoir de contrainte pour lancer le script :

    ```powershell
   Set-ExecutionPolicy Unrestricted
    ```

3. Lancer le script :

    ```powershell
    .\ConfigureRemotingForAnsible.ps1
    ```
