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

        stage('Deploy') {
            when {
                expression { env.GIT_BRANCH == 'origin/master' }
            }
            steps {
                sh '''
                docker stop app || true
                docker rm app || true
                docker pull subbulakshmisenthilmurugan/prod:latest
                docker run -d -p 80:80 --name app subbulakshmisenthilmurugan/prod:latest
                '''
            }
        }
    }
}
