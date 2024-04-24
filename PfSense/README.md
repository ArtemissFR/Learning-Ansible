
# Ansible X PfSense

Welcome to the Ansible playbooks repository for PfSense. This repository contains Ansible playbooks and roles that utilize the pfsensible.core collection.

## Documentation

Please refer to the [documentation](https://galaxy.ansible.com/ui/repo/published/pfsensible/core/docs/) for detailed information on using these playbooks and roles.

## Prerequisites

Before running these playbooks, ensure you have installed the `pfsensible.core` collection using Ansible Galaxy.
To install `pfsensible.core`, use the following commands:

```bash
ansible-galaxy collection install pfsensible.core
```

Optionally, you can specify the path where the collection should be installed using the `-p` option:

```bash
ansible-galaxy collection install pfsensible.core -p ./collections
```

Once the collection is installed, you can proceed to use the playbooks and roles provided in this repository.
