
node {
   def app
   stage('Clone repo') {
   checkout scm
   }

   stage('build image') {
   app = docker.build("teladoc-hello")
   }
   stage('Test') {
   sh 'echo Testing'
   }

   stage('Push Image') {
   docker.withRegistry('indrahrp','indrahrp') {
   app.push("${env.BUILD_NUMBER}") 	    
   }
   } 



}
