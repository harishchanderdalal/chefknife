#! /bin/sh
cat <<EOF
Vagrant.configure('2') do |config|
    config.vm.box = 'dummy'
    config.vm.provider 'aws' do |aws, override|
    aws.access_key_id = "$accesskey"
    aws.secret_access_key = "$secretkey"
    aws.keypair_name = '$privatekeyname'
    aws.instance_type = 't2.medium'
    aws.region = '$region'
    aws.ami = 'ami-6f198a0c'
    aws.security_groups = '$sgroup'
    aws.tags = {
        'Name' => '$tag',
        'Owner' => '$owner'
    }
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = '/var/lib/jenkins/workspace/$JOB_NAME/vagrant/keypair.pem'
  end
   config.vm.provision :shell, :path => "chefInstall.sh"
end
EOF
