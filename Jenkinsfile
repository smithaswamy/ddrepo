pipeline {
  agent {
    docker {
        image 'maven:3-alpine'
    }
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
