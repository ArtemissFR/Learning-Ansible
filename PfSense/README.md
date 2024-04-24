
# Ansible X PfSense

Welcome to the Ansible playbooks repository for PfSense. This repository contains Ansible playbooks and roles that utilize the pfsensible.core collection.

## Documentation

Please refer to the [documentation](https://galaxy.ansible.com/ui/repo/published/pfsensible/core/docs/) for detailed information on using these playbooks and roles.

## Prerequisites

Before running these playbooks, ensure you have installed the `pfsensible.core` collection using Ansible Galaxy.
To install `pfsensible.core`, use the following commands:

```yaml
ansible-galaxy collection install pfsensible.core
```

Optionally, you can specify the path where the collection should be installed using the `-p` option:

```yaml
ansible-galaxy collection install pfsensible.core -p ./collections
```

## Configuration

In Ansible versions 2.9 and 2.10, Python discovery is limited to detecting Python up to version 3.7. However, Ansible 2.11 can detect Python version 3.8. If Python discovery fails or if you need to specify a Python interpreter version, you can set `ansible_python_interpreter` in your playbook or host variables based on the pfSense version:

- For pfSense >= 2.5.2:
  ```yaml
  ansible_python_interpreter: /usr/local/bin/python3.8
  ```

- For pfSense >= 2.4.5, < 2.5.2:
  ```yaml
  ansible_python_interpreter: /usr/local/bin/python3.7
  ```

- For pfSense < 2.4.5:
  ```yaml
  ansible_python_interpreter: /usr/local/bin/python2.7
  ```

Modules must run with root privileges to make changes to the system. By default, pfSense does not have sudo capability, so using `become` will not work. To enable sudo capability, you can install the `pfSense-pkg-sudo` package and configure sudo permissions for your user:

```yaml
- name: "Install packages"
  package:
    name:
      - pfSense-pkg-sudo
    state: present
```

After installing `pfSense-pkg-sudo`, ensure your user has the necessary permissions to use sudo for executing Ansible playbooks successfully. This configuration is essential for managing pfSense systems with Ansible.

Once the collection is installed, you can proceed to use the playbooks and roles provided in this repository.
