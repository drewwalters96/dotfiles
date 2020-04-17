#!/bin/bash
#
# Install dotfiles on Ubuntu

# Install ansible
if [[ ! "$(which ansible)" ]]; then
  sudo -H apt update
  sudo -H apt install software-properties-common
  sudo -H apt-add-repository --yes --update ppa:ansible/ansible
  sudo -H apt install -y --no-install-recommends ansible
fi

# Run system setup playbook
ANSIBLE_CFG="$(pwd)/ansible.cfg" ansible-playbook -c local \
  -e @playbooks/vars/default.yaml playbooks/system-setup/main.yaml
