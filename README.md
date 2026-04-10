# DevSecOps Production Pipeline Project

## Overview
End-to-end DevSecOps pipeline implementing CI/CD, security scanning, containerization, and Kubernetes deployment.

## Tech Stack
- AWS (EC2)
- Terraform (Infrastructure as Code)
- Docker (Containerization)
- Kubernetes (Deployment)
- Jenkins (CI/CD)
- Python Flask (Sample App)

## Architecture
Developer → Jenkins → SAST → Docker → Trivy Scan → Kubernetes

## Features
- CI/CD using Jenkins
- Infrastructure using Terraform
- Container security scanning (Trivy)
- Code scanning (Bandit)
- Kubernetes deployment with health checks

## Setup Steps

### 1. Clone Repo
git clone https://github.com/<your-username>/devops-production-pipeline.git

### 2. Build Docker Image
cd app
docker build -t devops-app .

### 3. Push to Docker Hub
docker tag devops-app <your-dockerhub-username>/devops-app
docker push <your-dockerhub-username>/devops-app

### 4. Deploy to Kubernetes
kubectl apply -f k8s/

### 5. Terraform Infra
cd terraform
terraform init
terraform apply

## Info
- Automated CI/CD pipeline using Jenkins
- Infrastructure provisioning using Terraform
- Containerized application deployment
- Kubernetes-based scaling and service exposure

  
## Outcome
- Reduced deployment effort
- Improved security posture
- Automated full delivery pipeline


kubectl get pods

  NAME                          READY   STATUS    RESTARTS   AGE
devops-app-xxxx               1/1     Running   0          2m
devops-app-yyyy               1/1     Running   0          2m

kubectl get svc
devops-app-service   NodePort   ...   30007

http://<your-ec2-ip>:30007
DevOps Pipeline Running Successfully

docker images
devops-app   latest

Bandit
No issues identified
Trivy
Total: 0 (CRITICAL: 0, HIGH: 0)


