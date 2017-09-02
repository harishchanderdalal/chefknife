
 node('master') {

       stage ('Git Checkout')
    {
          dir ('knife') { 
          git 'https://github.com/harishchanderdalal/chefknife.git'
   	      echo 'Repository Clone'
             }
    }
  
     stage ('Knife File')
    {
          dir ('knife') {
          sh 'sudo chmod +x knife.sh'
          sh './knife.sh > knife.rb'
   	      echo 'Knife Create'
          }
    }  
  
     stage ('Knife Configure')
    {
          sh 'cd ~/chefWorkstation/chef-repo/ && knife ssl fetch'
   	      echo 'Knife Configure'
    }  
 
      stage ('Knife Verify')
    {
          sh 'cd ~/chefWorkstation/chef-repo/ && knife user list'
   	      echo 'Knife Verify'
    }  
  }     
