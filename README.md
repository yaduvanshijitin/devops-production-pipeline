# DevOps Production Pipeline Project

## Overview
This project demonstrates an end-to-end DevOps pipeline including infrastructure provisioning, CI/CD automation, containerization, and Kubernetes deployment.

## Tech Stack
- AWS (EC2)
- Terraform (Infrastructure as Code)
- Docker (Containerization)
- Kubernetes (Deployment)
- Jenkins (CI/CD)
- Python Flask (Sample App)

## Architecture Flow
Code → Jenkins Pipeline → Docker Build → Docker Hub → Kubernetes Deployment

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

## Features
- Automated CI/CD pipeline using Jenkins
- Infrastructure provisioning using Terraform
- Containerized application deployment
- Kubernetes-based scaling and service exposure
