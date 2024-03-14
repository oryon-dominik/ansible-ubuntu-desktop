
# ansible tut

# play module ping on the local machine
ansible local -m ping

# run just a certain role
ansible local --module-name import_role --args name=surfacebook

# show builtin facts
ansible local -m ansible.builtin.setup

# run a playbook
ansible-playbook theplaybook.yml --ask-become-pass


