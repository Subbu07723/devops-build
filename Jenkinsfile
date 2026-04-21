pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Push to DEV') {
            when { branch 'dev' }
            steps {
                sh 'docker tag myapp subbulakshmisenthilmurugan/dev:latest'
                sh 'docker push subbulakshmisenthilmurugan/dev:latest'
            }
        }

        stage('Push to PROD') {
            when { branch 'master' }
            steps {
                sh 'docker tag myapp subbulakshmisenthilmurugan/prod:latest'
                sh 'docker push subbulakshmisenthilmurugan/prod:latest'
            }
        }
    }
}
