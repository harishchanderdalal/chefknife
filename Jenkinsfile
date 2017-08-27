
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
  
     stage ('Variable Pem')
    {
        dir ('vagrant') { 
        sh 'export keypair=${keypair}'
         sh 'export pem=${pem}'
        sh 'echo $pem > /var/lib/jenkins/workspace/${JOB_NAME}harishApSoutEast1.pem'
        echo 'vagrant install'
             }
    }
 
    stage ('Vagrant Build')
    {
          dir ('vagrant') { 
          sh 'export key=${key}'
          sh 'export access=${access}'
          sh 'export region=${region}'
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
          sh 'vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box'
             echo 'Vagrant Ready To Launch'
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
