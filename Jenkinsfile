pipeline {
  agent {
    dockerfile true
}
  stages {
    stage('Build') {
      steps {
        echo "Docker success"
        sh 'mvn -B'
      }
    }
  }
 }
