# ansible-ubuntu-desktop

Provision an Ubuntu-Desktop via ansible.  

Control node: your local machine.  
Managed node: the same local machine :)  


1. Ubuntu bootable USB-stick & minimal-Installation on your device.

2. Install ansible and clone this repo.

    wget --output-document=- https://raw.githubusercontent.com/oryon-dominik/ansible-ubuntu-desktop/trunk/setup-ansible-provisioning.sh | bash

3.  Run the playbooks locally to start provisioning.

    ansible-playbook <playbook_name>.yml --ask-become-pass
