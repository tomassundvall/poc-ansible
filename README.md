# poc-ansible

This readme walks you thorugh how to configure the setup using vagrant and
ansible.

    ansible-galaxy install --role-file=requirements.yml --roles-path=./roles
    vagrant up


## From the controller

    ansible-playbook playbook.yml -f 10

## Creating a new role

    ansible-galaxy init role_name

## TODO

 - [x] Ansible bootstrap for Ubuntu
   - [x] Inventory file
 - [ ] The nodes
   - [ ] 3 Zookeeper + Kafka
   - [ ] Schema registry
 - [ ] Roles
   - [ ] Kafka
     - [ ] Upgrade repo from `requirements.txt` to Ubuntu 16.04 (SystemD)
   - [ ] Zookeeper
     - [ ] Upgrade repo from `requirements.txt` to Ubuntu 16.04 (SystemD)
   - [ ] SSH
   - [ ] SSH Keys
   - [ ] apt
   - [ ] apt security updates
   - [ ] auditd
   - [ ] ntpd

## References

 - [Ansible docs][ansible-docs]
 - [Ansible Galaxy][ansible-galaxy]


 [ansible-docs]: https://docs.ansible.com/
 [ansible-galaxy]: https://docs.ansible.com/ansible/galaxy.html

