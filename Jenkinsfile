
 node('master') {
 
     stage ('Git Checkout')
    {
          dir ('Vagrant Chef') { 
          git 'https://github.com/harishchanderdalal/vagrantProvisionEc2Chef.git'
    	      echo 'Repository Clone'
             }
    }
 
    stage ('Vagrant Build')
    {
          dir ('vagrant') { 
          sh 'export key=${key}'
          sh 'export access=${access}'
          sh 'export keypair=${keypair}'
          sh 'export region=${region}'
          sh 'export sgroup=${sgroup}'
          sh 'export tag=${tag}'
          sh 'export owner=${owner}'
          sh 'chmod +x vagrantfile.sh'
          sh './vagrantfile.sh > Vagrantfile'
              echo 'Vagrantfile Created'
              }
    }
 
    stage ('vagrant box')
    {
          dir ('vagrant') {
          sh 'vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box'
             echo 'Vagrant Ready'
             }
    }
 
    stage ('Ec2 Provison')
    {
       dir ('vagrant') {
       sh 'vagrant up --provider=aws'
             echo 'Ec2 Created'
             } 
            }
  
  }     
