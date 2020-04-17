#!/bin/bash

set -x

if [[ ! "$(which ansible)" ]]; then
  sudo -H apt update
  sudo -H apt install software-properties-common
  sudo -H apt-add-repository --yes --update ppa:ansible/ansible
  sudo -H apt install -y --no-install-recommends ansible
fi
