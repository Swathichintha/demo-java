node{

   stage('SCM Checkout'){
      git "https://github.com/Swathichintha/demo-java"
   }
   stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
      def scannerHome = tool 'sonarscanner';
      withSonarQubeEnv('sonar') {
      sh "${scannerHome}/bin/sonar-scanner"
   //   properties {
//property "sonar.host.url", http://sonar.xxxxx.com //  url is your sonar server
    //     property "sonar.projectName", "${JOB_NAME}"   // this name will appear in dashboard
    //     property "sonar.projectKey", "${BUILD_NUMBER}" // It sould be a keybased on this report is created
//property "sonar.groovy.jacoco.reportPath", "${project.buildDir}/jacoco/test.exec"   
      }
  // }
   }
    
   stage('Build and Deploy'){
       sh 'mvn deploy'
   }
   stage('Deploy'){
      sh 'cp target/demo.war .'
      sh 'docker build -t hello:1.0 . '
      sh 'docker stop hello'
      sh 'docker rm hello'
      sh 'docker run -d --name=hello -p 80:8080 hello:1.0'
   }   
    
}
