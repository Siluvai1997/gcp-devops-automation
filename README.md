# GCP DevOps Automation and Monitoring Suite

This project demonstrates a basic yet realistic DevOps workflow using Python, Terraform, Docker, and GitHub Actions to provision GCP infrastructure, monitor services with Prometheus, and automate deployments.

## Tech Stack
- Google Cloud Platform (GCP)
- Terraform
- Kubernetes (GKE)
- Docker
- GitHub Actions
- Prometheus
- Python (automation scripts)

## Features
- Terraform config to create a GKE cluster
- Dockerfile to containerize a sample Python Flask app
- GitHub Actions workflow to build, push, and deploy to GKE
- Prometheus configuration to monitor the app
- Python health-check script
- Support-ready layout for junior DevOps use cases

## Prerequisites
- GCP account & service account key
- Terraform installed
- Docker installed
- GitHub repository connected
- Python 3.x installed

## Setup Instructions

### 1. Provision GKE Cluster
```bash
cd terraform
terraform init
terraform apply
```

### 2. Build Docker Image
```bash
cd docker
docker build -t flask-monitoring-app:latest .
```

### 3. Run Python Script for Health Check
```bash
cd scripts
python3 health_check.py
```

### 4. CI/CD Pipeline
GitHub Actions auto-triggers on push to `main`:
- Builds Docker image
- Pushes to GCR (if configured)
- Deploys to GKE

### 5. Monitoring
Prometheus config located in `monitoring/prometheus/prometheus.yml`

## Repository Structure

```
.
├── terraform/                 # GKE Infrastructure
│   └── main.tf
├── docker/                    # Dockerized Flask App
│   └── Dockerfile
├── ci-cd/.github/workflows/  # GitHub Actions CI/CD
│   └── deploy.yml
├── monitoring/prometheus/    # Prometheus Config
│   └── prometheus.yml
├── scripts/                  # Support scripts
│   └── health_check.py
└── README.md
```
