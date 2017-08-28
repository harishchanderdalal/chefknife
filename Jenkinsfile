
 node('master') {
 
     stage ('Git Checkout')
    {
          dir ('vagrant') { 
          git 'https://github.com/harishchanderdalal/vagrantProvisionEc2Chef.git'
   	      echo 'Repository Clone'
             }
    }
  
     stage ('Vagrant Install')
    {
        dir ('vagrant') { 
        sh 'sudo chmod +x vagrantInstall.sh'
        sh 'sudo chmod +x vagrantfile.sh'
        sh 'sudo ./vagrantInstall.sh' 
        echo 'vagrant install'
             }
    }
  
    stage ('vagrant box')
    {
          dir ('vagrant') {
          sh 'sudo vagrant box add dummy --force https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box'
             echo 'Vagrant Ready To Launch'
             }
    }
 
    stage ('Vagrant Build')
    {
          dir ('vagrant') { 
          sh 'export accesskey=${accesskey}'
          sh 'export secretkey=${secretkey}'
          sh 'export region=${region}'
          sh 'export privatekeyname=${privatekeyname}'
          sh 'export sgroup=${sgroup}'
          sh 'export tag=${tag}'
          sh 'export owner=${owner}'
          sh './vagrantfile.sh > Vagrantfile'
              echo 'Vagrantfile Created'
              }
    }
  
      stage ('vagrant box')
    {
          dir ('vagrant') {
          sh 'echo ${privatefile} > keypair.pem'
             echo 'Vagrant Ready To Launch'
             }
    }
 
    stage ('Ec2 Provison')
    {
       dir ('vagrant') {
       sh 'sudo vagrant up --provider=aws'
             echo 'Ec2 Created'
             } 
            }
  
  }     
