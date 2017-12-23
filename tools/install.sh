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

echo 'Installing lockscreen (needs sudo access)'
sudo cp usr/local/bin/betterlockscreen /usr/local/bin/betterlockscreen

echo "Done."
