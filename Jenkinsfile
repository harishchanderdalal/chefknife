
 node('master') {
   
     stage ('Knife Configure')
    {

          sh 'scp -i /vagrant/keypair.pem ubuntu@ec2-54-169-181-226.ap-southeast-1.compute.amazonaws.com:/vagrant/a* /vagrant/chef-repo/.chef/'
          sh 'sudo knife ssl fetch'
   	      echo 'Knife Configure'

    }  
 
      stage ('Knife Verify')
    {

          sh 'sudo knife user list'
   	      echo 'Knife Verify'

    }  
  }     
