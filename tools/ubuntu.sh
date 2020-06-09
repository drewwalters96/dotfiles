#!/bin/bash
#
# Install dotfiles on Ubuntu

set -x

CFG_DIR="$(mktemp -d)"

# Install ansible
if [[ ! "$(which ansible)" ]]; then
  sudo -H apt-get update
  sudo -H apt-get -y --no-install-recommends install software-properties-common
  sudo -H apt-add-repository --yes --update ppa:ansible/ansible
  sudo -H apt-get install -y --no-install-recommends ansible
fi

tee "${CFG_DIR}/ansible.cfg" << EOF
[defaults]
roles_path = $(pwd)/roles
EOF

# Run system setup playbook
env ANSIBLE_CONFIG="${CFG_DIR}/ansible.cfg" ansible-playbook -c local \
  -e @playbooks/vars/default.yaml playbooks/system-setup/main.yaml
