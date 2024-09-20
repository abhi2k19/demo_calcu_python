pipeline {
    agent any

    environment {
        // Update the Docker image name with your Docker Hub username and the repository name
        DOCKER_IMAGE = "abhijithas1999/my_calculator_app"
        IMAGE_TAG = "${env.BRANCH_NAME}-${env.BUILD_ID}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Update the GitHub repository URL with your GitHub repository details
                git 'https://github.com/abhijithas1999/demo_calcu_python.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image with a unique tag
                    sh 'docker build -t $DOCKER_IMAGE:$IMAGE_TAG .'
                }
            }
        }

        stage('Test and Lint') {
            parallel {
                stage('Unit Tests') {
                    steps {
                        // Run unit tests inside the Docker container
                        sh 'docker run --rm $DOCKER_IMAGE:$IMAGE_TAG python -m unittest discover tests'
                    }
                }
                stage('Linting') {
                    steps {
                        // Run Pylint to check for coding standard violations
                        sh 'pylint calculator/*.py app.py --exit-zero'
                    }
                }
            }
        }

        stage('Security Scan') {
            steps {
                script {
                    // Run a security scan using Trivy to check for vulnerabilities
                    sh 'docker run --rm aquasec/trivy --exit-code 1 --severity HIGH $DOCKER_IMAGE:$IMAGE_TAG'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Push the Docker image to Docker Hub using stored credentials
                    sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
                    sh 'docker push $DOCKER_IMAGE:$IMAGE_TAG'
                    // Tag the image as latest and push it again
                    sh 'docker tag $DOCKER_IMAGE:$IMAGE_TAG $DOCKER_IMAGE:latest'
                    sh 'docker push $DOCKER_IMAGE:latest'
                }
            }
        }
    }

    post {
        always {
            // Clean up workspace after build completion
            cleanWs()
        }
        success {
            // Notify via Slack on build success (ensure Slack integration is set up)
            slackSend(channel: '#build-status', color: 'good', message: "Build succeeded: ${env.JOB_NAME} [${env.BUILD_NUMBER}]")
        }
        failure {
            // Notify via Slack on build failure
            slackSend(channel: '#build-status', color: 'danger', message: "Build failed: ${env.JOB_NAME} [${env.BUILD_NUMBER}]")
        }
    }
}
