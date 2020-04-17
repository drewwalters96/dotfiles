#!/bin/bash

set -x

if [[ ! "$(which ansible)" ]]; then
  apt update
  apt install software-properties-common
  apt-add-repository --yes --update ppa:ansible/ansible
  apt install -y --no-install-recommends ansible
fi

ANSIBLE_CFG="$(pwd)/ansible.cfg" ansible-playbook -c local \
  -e @playbooks/vars/default.yaml playbooks/system-setup/main.yaml
