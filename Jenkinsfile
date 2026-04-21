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
                checkout scm
            }
        }

        stage('Detect Branch') {
            steps {
                script {
                    echo "Building branch: ${env.BRANCH_NAME}"
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t myapp .'
                }
            }
        }

        stage('Tag Image (Dev)') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    sh "docker tag myapp ${DEV_IMAGE}"
                }
            }
        }

        stage('Tag Image (Prod)') {
            when {
                branch 'master'
            }
            steps {
                script {
                    sh "docker tag myapp ${PROD_IMAGE}"
                }
            }
        }

        stage('Push to Dev Docker Hub') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        sh "docker push ${DEV_IMAGE}"
                    }
                }
            }
        }

        stage('Push to Prod Docker Hub') {
            when {
                branch 'master'
            }
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        sh "docker push ${PROD_IMAGE}"
                    }
                }
            }
        }

        stage('Deploy (Dev)') {
            when {
                branch 'dev'
            }
            steps {
                echo "Deploying DEV container..."
                sh "docker run -d -p 3000:3000 ${DEV_IMAGE} || true"
            }
        }

        stage('Deploy (Prod)') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying PROD container..."
                sh "docker run -d -p 80:80 ${PROD_IMAGE} || true"
            }
        }
    }
}
