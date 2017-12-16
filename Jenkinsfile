
node {
   def app
   env.MYWEBSVR='10.97.0.197'
   stage('Clone repo') {
   checkout scm
   }

   stage('build image') {
   app = docker.build("indrahrp/teladoc-hello")
   }
   stage('Test') {
   sh 'echo Testing'
   }

   stage('Push Image') {
   docker.withRegistry('https://registry.hub.docker.com','indrahrp') {
   app.push("${env.BUILD_NUMBER}") 	    
   app.push("latest") 	    
   }
   } 

   stage('Deploy New Image') {
   sh 'ssh root@${env.MYWEBSVR} < /root/refreshdocker.sh'
   }


}
