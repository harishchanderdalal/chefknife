#!/bin/bash

echo BEGIN
sudo apt-get update
sudo apt-get install -y wget
wget https://packages.chef.io/files/stable/chef-server/12.16.2/ubuntu/16.04/chef-server-core_12.16.2-1_amd64.deb
sudo dpkg -i chef-server*

sudo chef-server-ctl reconfigure
sudo chef-server-ctl status
sudo chef-server-ctl test

sudo chef-server-ctl user-create harishdalal harish dalal harishdalal@gmail.com harish@123$ --filename ~/.chef/harishdalal.pem
sudo chef-server-ctl org-create dalal suranderdalal --association_user harishdalal --filename ~/.chef/dalal.pem

sudo chef-server-ctl install chef-manage 
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure --accept-license

sudo chef-server-ctl install opscode-push-jobs-server
sudo chef-server-ctl reconfigure
sudo opscode-push-jobs-server-ctl reconfigure

sudo chef-server-ctl install opscode-reporting
sudo chef-server-ctl-reconfigure
sudo opscode-reporting-ctl reconfigure --accept-license

sudo chef-manage-ctl restart
sudo chef-server-ctl restart
echo DONE
