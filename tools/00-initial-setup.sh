#!/bin/bash

set -x

if [[ ! "$(which ansible)" ]]; then
  apt update
  apt install software-properties-common
  apt-add-repository --yes --update ppa:ansible/ansible
  apt install -y --no-install-recommends ansible
fi
