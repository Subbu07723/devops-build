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
                expression { env.GIT_BRANCH == 'origin/dev' }
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
                expression { env.GIT_BRANCH == 'origin/master' }
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
