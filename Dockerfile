pipeline {
    agent any
    environment {
        IMAGE='smitha05/sayhello'
        TAG='latest'
    }
    stages {
        stage('Build') {
            steps {
                sh "docker build --pull -t ${IMAGE}:${TAG} ."
            }
        }
        stage('Push to dockerhub') {
            when {
                branch 'master'
            }
            steps {
                withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
                bat "docker login -u smitha05 -p ${dockerHubPwd}"

                    sh "docker push ${env.IMAGE}:${TAG}"
                }
            }
        }
    }
}
