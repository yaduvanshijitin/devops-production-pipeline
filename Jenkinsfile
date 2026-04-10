pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "yaduvanshijitin/devops-app"
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/yaduvanshijitin/devops-production-pipeline.git'
            }
        }

        stage('SAST Scan') {
            steps {
                sh 'pip install bandit || true'
                sh 'bandit -r app/ || true'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t devops-app ./app'
            }
        }

        stage('Container Scan') {
            steps {
                sh 'trivy image devops-app || true'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker tag devops-app $DOCKER_IMAGE:latest'
                sh 'docker push $DOCKER_IMAGE:latest'
            }
        }

        stage('Deploy') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
    }
}
