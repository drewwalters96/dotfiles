#!/bin/bash
#
# Installs dotfiles by copying relative paths to home dir.

echo 'Installing github.com/drewwalters96/dotfiles...'

for f in $(ls -A); do
  if  ! fgrep -q  "$f" tools/.ignore ; then
    echo "Installing $f"
    cp -r $f ~/$f
  fi
done

echo "Done."
