#! /bin/sh
cat <<EOF
Vagrant.configure('2') do |config|
    config.vm.box = 'dummy'
    config.vm.provider 'aws' do |aws, override|
    aws.access_key_id = "$key"
    aws.secret_access_key = "$access"
    aws.keypair_name = '$keypair'
    aws.instance_type = 't2.medium'
    aws.region = 'region'
    aws.ami = 'ami-099fe766'
    aws.security_groups = 'sgroup'
    aws.tags = {
        'Name' => 'tag',
        'Owner' => 'owner'
    }
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = '/var/lib/jenkins/workspace/$keypair.pem'
  end
   config.vm.provision :shell, :path => "chefInstall.sh"
end
EOF
