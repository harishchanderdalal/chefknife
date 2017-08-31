#!/bin/bash
echo BEGIN

mkdir ~/chefWorkstation

sudo mv /vagrant/chef-repo/ ~/chefWorkstation/
sudo cp /vagrant/keypair.pem ~/chefWorkstation/
sudo chown -R jenkins:jenkins ~/chefWorkstation/

cd ~/workspace/Chef/vagrant/ && export chefurl=`sudo vagrant ssh-config |awk 'NR==2{print $2}'`
scp -i ~/chefWorkstation/keypair.pem ubuntu@$chefurl:/vagrant/a* ~/chefWorkstation/chef-repo/.chef/

echo END
