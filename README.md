# ~ Learning Ansible ~

This Ansible project is a collection of various tests and roles that I have experimented with. It aims to provide practical examples of using Ansible to automate different tasks in diverse environments.

## How to Use

. **Clone the Project:**
   ```bash
   git clone https://github.com/ArtemissFR/Learning-Ansible
   cd Learning-Ansible
   ```

.
└── Learning-Ansible
    ├── Cisco_Switch
    │   ├── ansible.cfg
    │   ├── Backup
    │   │   └── README.md
    │   ├── Debug.yml
    │   ├── hosts.ini
    │   ├── Launch_FirstTest(expired).yml
    │   ├── Launch_RouterConfig.yml
    │   ├── README.md
    │   ├── Restore.yml
    │   ├── roles
    │   │   ├── conf_base
    │   │   │   └── tasks
    │   │   │       ├── conf_banner.yml
    │   │   │       ├── conf_interfaces.yml
    │   │   │       ├── conf_security.yml
    │   │   │       ├── main.yml
    │   │   │       └── README.md
    │   │   ├── conf_snmp
    │   │   │   └── tasks
    │   │   │       └── main.yml
    │   │   ├── conf_switch
    │   │   │   └── tasks
    │   │   │       ├── affect.yml
    │   │   │       ├── config.yml
    │   │   │       ├── gateway_config.yml
    │   │   │       ├── main.yml
    │   │   │       └── ports_security.yml
    │   │   ├── connectivity_test
    │   │   │   └── tasks
    │   │   │       └── main.yml
    │   │   ├── debug
    │   │   │   └── tasks
    │   │   │       ├── main.yml
    │   │   │       ├── show_mac.yml
    │   │   │       └── show_run.yml
    │   │   ├── restore_conf
    │   │   │   └── tasks
    │   │   │       ├── apply_config.yml
    │   │   │       ├── copy_config.yml
    │   │   │       └── main.yml
    │   │   ├── RouterConfig
    │   │   │   ├── conf_base
    │   │   │   │   └── tasks
    │   │   │   │       ├── ACLS
    │   │   │   │       │   ├── acls_creator_line.yml
    │   │   │   │       │   ├── acls_creator_promptline.yml
    │   │   │   │       │   ├── acls_creator_prompt.yml
    │   │   │   │       │   ├── acls_debug_var.yml
    │   │   │   │       │   ├── acls_destructor.yml
    │   │   │   │       │   ├── acls_main.yml
    │   │   │   │       │   ├── ACLS_PORT_PROTOCOL_DATA
    │   │   │   │       │   │   ├── acls_port_protocol_data_eq.yml
    │   │   │   │       │   │   ├── acls_port_protocol_data_gt.yml
    │   │   │   │       │   │   ├── acls_port_protocol_data_lt.yml
    │   │   │   │       │   │   ├── acls_port_protocol_data_neq.yml
    │   │   │   │       │   │   └── acls_port_protocol_data_range.yml
    │   │   │   │       │   ├── ACLS_TLL_DATA
    │   │   │   │       │   │   ├── acls_tll_data_eq.yml
    │   │   │   │       │   │   ├── acls_tll_data_gt.yml
    │   │   │   │       │   │   ├── acls_tll_data_lt.yml
    │   │   │   │       │   │   ├── acls_tll_data_neq.yml
    │   │   │   │       │   │   └── acls_tll_data_range.yml
    │   │   │   │       │   ├── get_info_acls.yml
    │   │   │   │       │   ├── HELP_DOC
    │   │   │   │       │   │   └── ACLS_OPTIONSPARAMETERS.txt
    │   │   │   │       │   └── main.yml
    │   │   │   │       ├── basic_conf.yml
    │   │   │   │       ├── interface_conf.yml
    │   │   │   │       ├── main.yml
    │   │   │   │       ├── recap_config.yml
    │   │   │   │       ├── security_conf.yml
    │   │   │   │       └── snmp_conf.yml
    │   │   │   └── get_info
    │   │   │       └── tasks
    │   │   │           ├── iostype.yml
    │   │   │           └── main.yml
    │   │   ├── save_config
    │   │   │   └── tasks
    │   │   │       ├── backup.yml
    │   │   │       ├── main.yml
    │   │   │       └── show_run.yml
    │   │   └── show_info
    │   │       └── tasks
    │   │           └── main.yml
    │   ├── Save.yml
    │   └── VARS.yml
    ├── Custom_CMD
    │   ├── ansible.cfg
    │   ├── hosts.ini
    │   ├── Launch.yml
    │   ├── README.md
    │   └── roles
    │       ├── Apply_Configuration
    │       │   └── tasks
    │       │       └── main.yml
    │       └── Packages_Install
    │           └── tasks
    │               └── main.yml
    ├── README.md
    └── Update_Packages
        ├── ansible.cfg
        ├── hosts.ini
        ├── Launch.yml
        ├── README.md
        └── roles
            └── Install_Packages
                └── tasks
                    ├── clean_files.yml
                    ├── full_update.yml
                    ├── main.yml
                    └── package_list.yml


![Logo](https://docs.ansible.com/ansible/latest/_static/images/Ansible-Mark-RGB_White.png)
