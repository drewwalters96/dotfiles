#!/bin/bash

set -x

apt-add-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable"

apt-get update
apt-get install --no-install-recommends -y \
        ca-certificates \
        curl \
        docker-ce \
        git \
        git-review \
        make \
        python-dev \
        python3-dev \
        shellcheck \
        tmux \
        vim

adduser "$(whoami)" docker
