#!/usr/bin/env bash


# Prepare installation folder
$INSTALL_DIR = $HOME/.install/ansible-ubuntu-desktop
mkdir -p $INSTALL_DIR

# Install git
sudo apt update
sudo apt install git
git clone git@github.com:oryon-dominik/ansible-ubuntu-desktop.git $INSTALL_DIR


# Install ansible
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA."
    sudo add-apt-repository --yes --update ppa:ansible/ansible
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install software-properties-common ansible --yes
else
    echo "Ansible already installed."
fi

# Display installation instructions
echo ""
echo "Run the playbooks to install a new kernel."
echo "  ansible-playbook install_surfacebook_kernel.yml --ask-become-pass"
echo ""
