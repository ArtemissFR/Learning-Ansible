# Ansible on Windows

## Run the Windows Configuration Script for Ansible

Download the script from the official website or use the one provided in the playbook:

Official website: [https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#winrm-setup](https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#winrm-setup)

- *(Optional)* To remove any constraints on running the script:

```powershell
Set-ExecutionPolicy Unrestricted
```

- Launch the script
```powershell
.\ConfigureRemotingForAnsible.ps1
```
