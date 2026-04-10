pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "<your-dockerhub-username>/devops-app"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/<your-username>/devops-production-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-app ./app'
            }
        }

        stage('Tag Image') {
            steps {
                sh 'docker tag devops-app $DOCKER_IMAGE:latest'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push $DOCKER_IMAGE:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
