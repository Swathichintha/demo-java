node{

   stage('SCM Checkout'){
      git "https://github.com/Swathichintha/demo-java"
   }
   stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
    def scannerHome = tool 'sonarScanner';
    withSonarQubeEnv('SonarQube 6.2') {
      bat "${scannerHome}/bin/sonar-runner.bat"
    }
    
   stage('Compile-Package'){
       sh 'mvn package'
   }
   
   stage('Deploy'){
      sh 'cp target/demo.war .'
      sh 'docker build -t hello:1.0 . '
      sh 'docker run -d --name=hello -p 80:8080 hello:1.0'
   }   
    
}
