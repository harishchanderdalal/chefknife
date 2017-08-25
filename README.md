# chef

## Platform
- Ubuntu Server 16.04 LTS

## Install Chef Server/Manger

```
wget https://packages.chef.io/files/stable/chef-server/12.16.2/ubuntu/16.04/chef-server-core_12.16.2-1_amd64.deb
sudo dpkg -i chef-server*
sudo chef-server-ctl status
sudo chef-server-ctl test
sudo chef-server-ctl install chef-manage 
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure
sudo chef-server-ctl user-create USERNAME FIRSTNAME LASTNAME EMAILID PASSWORD
sudo chef-manage-ctl restart
sudo chef-server-ctl restart
```
