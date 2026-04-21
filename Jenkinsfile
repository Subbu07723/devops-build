pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'dockerhub-cred'
        DOCKERHUB_USER = 'subbulakshmisenthilmurugan'
        IMAGE = "${subbulakshmisenthilmurugan}/dev:latest"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Tag Image') {
            steps {
                sh "docker tag myapp ${IMAGE}"
            }
        }

        stage('Push Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        sh "docker push ${IMAGE}"
                    }
                }
            }
        }
    }
}
