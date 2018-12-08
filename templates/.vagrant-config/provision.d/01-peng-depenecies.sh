#!/bin/bash
sudo aptitude -y install apache2-utils cmake colordiff file moreutils
sudo pip install --index-url=https://pypi.python.org/simple/ --upgrade pip
hash
pip install 'fabric==1.14.0'
pip install gitpython
gem install --no-rdoc --no-ri --version 2.3.5 puppet-lint

# Packer
cd /tmp
wget "https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip"
unzip packer_*.zip
rm packer_*.zip
install packer /usr/local/bin/packer
cd ~
hash

# Packer Plugins
cd /tmp
wget "https://github.com/lmars/packer-post-processor-vagrant-s3/releases/download/1.4.0/packer-post-processor-vagrant-s3-1.4.0-linux-amd64.zip"
mkdir -p ~/.packer.d/plugins
cd ~/.packer.d/plugins
unzip /tmp/packer-post-processor-vagrant-s3-1.4.0-linux-amd64.zip
cd ~

# ShellCheck
cd /tmp
wget "https://storage.googleapis.com/shellcheck/shellcheck-v0.4.6.linux.x86_64.tar.xz"
tar xfv shellcheck-v0.4.6.linux.x86_64.tar.xz
install shellcheck-v0.4.6/shellcheck /usr/local/bin/shellcheck

# SSH Configuration
cat >~/.ssh/config <<__EOF__
Host *.sc.goclio.com *.beta.clio.com *.ec2.goclio.eu
  User "cferguson"
__EOF__
