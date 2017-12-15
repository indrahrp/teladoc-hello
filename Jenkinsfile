
node {
   def app
   stage('Clone repo') {
   checkout scm
   }

   stage('build image') {
   app = docker.build("teladoc-hello")
   }
}
