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
                script {
                    if (env.GIT_BRANCH == "origin/dev") {

                        sh 'docker build -t subbulakshmisenthilmurugan/dev:latest .'

                        withDockerRegistry([credentialsId: 'dockerhub-cred']) {
                            sh 'docker push subbulakshmisenthilmurugan/dev:latest'
                        }
                    }
                }
            }
        }

        stage('Build & Push Prod') {
            steps {
                script {
                    if (env.GIT_BRANCH == "origin/master") {

                        sh 'docker build -t subbulakshmisenthilmurugan/prod:latest .'

                        withDockerRegistry([credentialsId: 'dockerhub-cred']) {
                            sh 'docker push subbulakshmisenthilmurugan/prod:latest'
                        }
                    }
                }
            }
        }
    }
}
