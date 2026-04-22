pipeline {
    agent any

    stages {

        stage('Build Dev') {
            when {
                branch 'dev'
            }
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/dev:latest .'
                sh 'docker push subbulakshmisenthilmurugan/dev:latest'
            }
        }

        stage('Build Prod') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/prod:latest .'
                sh 'docker push subbulakshmisenthilmurugan/prod:latest'
            }
        }
    }
}
