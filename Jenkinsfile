pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
                sh 'docker tag myapp subbulakshmisenthilmurugan/dev:latest'
            }
        }

        stage('Push to DEV') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-cred') {
                        sh 'docker push subbulakshmisenthilmurugan/dev:latest'
                    }
                }
            }
        }
    }
}
