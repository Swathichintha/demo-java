node{

   stage('SCM Checkout'){
      git "https://github.com/Swathichintha/demo-java"
   }
    
   stage('Compile-Package'){
       sh 'mvn package'
   }
   
   stage('Deploy'){
      sh 'sudo docker build -f Dockerfile -t hello:1.0 . '
      sh 'sudo docker run -d hello:1.0 -p 80:8080'
   }   
    
}
