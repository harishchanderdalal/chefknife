
 node('master') {

       stage ('Git Checkout')
    {
          dir ('dryRun') { 
          git 'https://github.com/harishchanderdalal/dryRun.git'
   	      echo 'Repository Clone'
             }
    }
  
     stage ('Knife File')
    {
          dir ('dryRun') {
          sh 'sudo chmod +x knife.sh'
          sh (cd /var/lib/jenkins/workspace/Chef/vagrant/ && export chefurl=`sudo vagrant ssh-config |awk 'NR==2{print $2}'`)
          sh 'echo $chefurl'
          sh './knife.sh > /vagrant/chef-repo/.chef/knife.rb'
   	      echo 'Knife Create'
          }
    }  
  
     stage ('Knife Configure')
    {
          sh 'sudo scp -i /vagrant/keypair.pem ubuntu@$chefserver:/vagrant/a* /vagrant/chef-repo/.chef/'
          sh 'cd /vagrant/chef-repo/.chef/ && sudo knife ssl fetch'
   	      echo 'Knife Configure'
    }  
 
      stage ('Knife Verify')
    {
          sh 'cd /vagrant/chef-repo/.chef/ && sudo knife user list'
   	      echo 'Knife Verify'
    }  
  }     
