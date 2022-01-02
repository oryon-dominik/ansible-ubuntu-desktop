#!/usr/bin/env bash


# Prepare installation folder
INSTALL_DIR=$HOME/.install/ansible-ubuntu-desktop
mkdir -p $INSTALL_DIR

# Install git
sudo apt update -qq --yes
sudo apt install -qq git --yes
git clone https://github.com/oryon-dominik/ansible-ubuntu-desktop.git $INSTALL_DIR


# Install ansible
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA."
    sudo add-apt-repository --yes --update ppa:ansible/ansible
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt update -qq --yes
    sudo apt install -qq software-properties-common ansible --yes
else
    echo "Ansible already installed."
fi

# Display installation instructions
echo ""
echo "Run the playbooks to install a new kernel."
echo "  ansible-playbook install_surfacebook_kernel.yml --ask-become-pass"
echo "  (requires READING the instructions below and a REBOOT thereafter to enable secure-boot)"
echo ""
echo "cding into the installation directory.."
echo ""

cd $INSTALL_DIR