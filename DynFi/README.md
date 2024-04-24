
# Installing DynFi Manager with Ansible

## Manual Step

https://dynfi.com/thanks/dfm/ 

## Prerequisites

Before getting started with the installation, make sure that:

- The remote machine is an Ubuntu 16.04 instance.
- Ansible is installed on your local machine.

## Installation Instructions

1. Clone this Git repository to your local machine:

   ```cmd
   cd /etc/ansible/roles
   git clone https://github.com/ArtemissFR/Learning-Ansible
   ```

2. Edit the Ansible inventory files to include details of your Ubuntu 16.04 remote machine.
   ```cmd
   nano /etc/ansible/roles/Learning-Ansible/DynFi/hosts.ini
   ```

3. Run the Ansible playbook to install DynFi Manager:

   ```cmd
   ansible-playbook Launch_DynFi.yml
   ```
