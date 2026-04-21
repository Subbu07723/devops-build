pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Push to DEV') {
            steps {
                sh 'docker tag myapp subbulakshmisenthilmurugan/dev:latest'
                sh 'docker push subbulakshmisenthilmurugan/dev:latest'
            }
        }
    }
}
