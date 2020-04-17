#!/bin/bash

set -x

ANSIBLE_CFG="$(pwd)/ansible.cfg" ansible-playbook -c local \
  -e @playbooks/vars/default.yaml playbooks/system-setup/main.yaml
