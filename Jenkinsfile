pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Push to DEV') {
            when {
                expression { env.BRANCH_NAME.contains('dev') }
            }
            steps {
                sh 'docker tag myapp subbulakshmisenthilmurugan/dev:latest'
                sh 'docker push subbulakshmisenthilmurugan/dev:latest'
            }
        }

        stage('Push to PROD') {
            when {
                expression { env.BRANCH_NAME.contains('master') }
            }
            steps {
                sh 'docker tag myapp subbulakshmisenthilmurugan/prod:latest'
                sh 'docker push subbulakshmisenthilmurugan/prod:latest'
            }
        }
    }
}
