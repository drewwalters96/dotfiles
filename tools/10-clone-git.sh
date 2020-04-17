#!/bin/bash

set -x

# TODO: Add this script to playbook functionality

mkdir -p ~/opendev.org/airship
git clone ssh://drewwalters96@review.opendev.org:29418/airship/airshipctl ~/opendev.org/airship/airshipctl

mkdir -p ~/github.com/drewwalters96
git clone git@github.com:drewwalters96/dotfiles.git ~/github.com/drewwalters96/dotfiles
