#!/bin/bash
set -e

echo "Starting Ubuntu configuration setup..."

# Move to the dotfiles directory
cd ~/dotfiles

# Install Ansible if not already installed
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt update
    sudo apt install -y ansible
fi

# Create our Ansible playbook if it doesn't exist in the repo
if [ ! -f ubuntu_setup.yml ]; then
    echo "Creating Ansible playbook..."

echo "Running Ansible playbook..."
ansible-playbook ansible/ubuntu_setup.yml -K

echo "Setup complete!"
