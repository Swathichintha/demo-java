node{

   stage('SCM Checkout'){
      git "https://github.com/Swathichintha/demo-java"
   }
    
   stage('Compile-Package'){
       sh 'mvn package'
   }
   
   stage('Deploy'){
      sh 'docker build -t hello:1.1'
      sh 'docker run -d hello:1.1 -p 80:8080'
   }   
    
}
