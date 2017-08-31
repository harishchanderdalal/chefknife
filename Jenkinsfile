
 node('master') {
   
     stage ('Knife Configure')
    {
          dir ('/vagrant/chef-repo/.chef') { 
          sh 'scp -i /vagrant/keypair.pem ubuntu@ec2-54-179-188-84.ap-southeast-1.compute.amazonaws.com:/vagrant/a* /vagrant/chef-repo/.chef/'
          sh 'sudo knife ssl fetch'
   	      echo 'Knife Configure'
             }
    }  
 
      stage ('Knife Verify')
    {
          dir ('/vagrant/chef-repo/') { 
          sh 'sudo knife user list'
   	      echo 'Knife Verify'
             }
    }  
  }     
