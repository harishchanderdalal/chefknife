
#!/bin/bash
sudo apt-get update
sudo apt-get install -y awscli
sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.4
wget https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb
sudo dpkg -i vagrant_1.9.7_x86_64.deb
sudo apt-get install -y build-essential patch
sudo apt-get install -y ruby-dev zlib1g-dev liblzma-dev
vagrant plugin install vagrant-aws
vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
