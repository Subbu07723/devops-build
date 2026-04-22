pipeline {
    agent any

    stages {

        stage('Check Branch') {
            steps {
                echo "Branch is: ${env.GIT_BRANCH}"
            }
        }

        stage('Build & Push Dev') {
            when {
                branch 'dev'
            }
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/dev:latest .'
                withDockerRegistry([credentialsId: 'docker-cred', url: '']) {
                    sh 'docker push subbulakshmisenthilmurugan/dev:latest'
                }
            }
        }

        stage('Build & Push Prod') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker build -t subbulakshmisenthilmurugan/prod:latest .'
                withDockerRegistry([credentialsId: 'docker-cred', url: '']) {
                    sh 'docker push subbulakshmisenthilmurugan/prod:latest'
                }
            }
        }
    }
}
