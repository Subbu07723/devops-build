pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'dockerhub-cred'
        DOCKERHUB_USER = 'subbulakshmisenthilmurugan'
        DEV_IMAGE = "${subbulakshmisenthilmurugan}/dev:latest"
        PROD_IMAGE = "${subbulakshmisenthilmurugan}/prod:latest"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/YOUR-REPO.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    if (env.BRANCH_NAME == "dev") {
                        docker.build("${DEV_IMAGE}")
                    } else if (env.BRANCH_NAME == "master") {
                        docker.build("${PROD_IMAGE}")
                    }
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('', DOCKERHUB_CREDENTIALS) {
                        if (env.BRANCH_NAME == "dev") {
                            docker.image("${DEV_IMAGE}").push()
                        } else if (env.BRANCH_NAME == "master") {
                            docker.image("${PROD_IMAGE}").push()
                        }
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    if (env.BRANCH_NAME == "dev") {
                        sh "docker run -d -p 3001:3000 ${DEV_IMAGE}"
                    } else if (env.BRANCH_NAME == "master") {
                        sh "docker run -d -p 3000:3000 ${PROD_IMAGE}"
                    }
                }
            }
        }
    }
}
