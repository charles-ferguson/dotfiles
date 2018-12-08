#!/usr/bin/bash

if [-d /home/vagant/.fzf/ ];
then
  echo "fzf directory exist, installing"
else
 git clone --depth 1 https://github.com/junegunn/fzf.git /home/vagrant/.fzf
 echo "cloned fzf, installing"
fi
yes | /home/vagrant/.fzf/install
