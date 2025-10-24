pipeline {
    agent { label 'AgentDocker' }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
        DOCKER_IMAGE = 'hectorproko//helloWorldPython'
    }
    stages {
        stage('Hector - Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }
        stage('Hector - Login to Dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Hector - Push image to Dockerhub') {
            steps {
                sh 'docker push ${DOCKER_IMAGE}:latest'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
