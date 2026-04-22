pipeline {
    agent any

    stages {

        stage('Check Branch') {
            steps {
                sh 'echo Branch is: $GIT_BRANCH'
            }
        }

        stage('Build & Push Dev') {
            steps {
                sh '''
                if [ "$GIT_BRANCH" = "origin/dev" ]; then
                    docker build -t subbulakshmisenthilmurugan/dev:latest .
                    docker push subbulakshmisenthilmurugan/dev:latest
                fi
                '''
            }
        }

        stage('Build & Push Prod') {
            steps {
                sh '''
                if [ "$GIT_BRANCH" = "origin/master" ]; then
                    docker build -t subbulakshmisenthilmurugan/prod:latest .
                    docker push subbulakshmisenthilmurugan/prod:latest
                fi
                '''
            }
        }
    }
}
