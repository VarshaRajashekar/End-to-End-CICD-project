## Project Overview

 Built an end-to-end CI/CD pipeline on AWS to automate the process of building and deploying a web application. Whenever code is pushed to GitHub, Jenkins automatically detects the change, builds the application, creates a Docker image, and deploys the latest version to the EC2 instance.

                    Developer
                        │
                        ▼
                   GitHub Repo
                        │
                        ▼
                 Jenkins Pipeline
                        │
         ┌──────────────┼──────────────┐
         │              │              │
         ▼              ▼              ▼
      Build         Docker Build   Terraform
                                      │
                                      ▼
                             AWS Infrastructure
                                      │
                                      ▼
                                EC2 Instance
                                      │
                                      ▼
                              Docker Container
                                      │
                ┌─────────────────────┼─────────────────────┐
                │                     │                     │
                ▼                     ▼                     ▼
          CloudWatch            CloudWatch Logs      CloudWatch Alarms
           Metrics
                │                     │                     │
                └─────────────┬───────┘                     │
                              ▼                             ▼
                        SNS Email Alerts            Operations Team

                 Future Enhancement
                 ──────────────────
                        │
                        ▼
                   Prometheus
                        │
                        ▼
                     Grafana

# ☁️ AWS Infrastructure Provisioning Using Terraform

Terraform is used to automate AWS infrastructure creation.

## Initialize Terraform

```bash
terraform init
```

## Validate Terraform Configuration

```bash
terraform validate
```

## Create Terraform Plan

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply
```

Terraform creates:

- EC2 Jenkins Server
- Security Groups
- IAM Roles
- CloudWatch Resources

---

# 🔧 Jenkins CI/CD Configuration

## Jenkins Plugins Installed

The following plugins are used:

- Git Plugin
- Git Client Plugin
- Pipeline Plugin
- Pipeline Stage View
- Docker Pipeline Plugin
- Docker Plugin
- Credentials Binding Plugin
- SSH Credentials Plugin

---

# 🔄 CI/CD Pipeline Workflow

The Jenkins pipeline automates the complete application lifecycle.

## Pipeline Stages

### 1. Source Code Checkout

Jenkins pulls the latest code from GitHub.

```
GitHub Repository
        |
        v
Jenkins Workspace
```

---

### 2. Docker Image Build

Jenkins builds a Docker image:

```bash
docker build -t cicd-app .
```

---

### 3. Deploy Application Container

The Docker container is started:

```bash
docker run -d -p 5000:5000 --name cicd-app cicd-app
```

Application runs on:

```
http://<EC2-PUBLIC-IP>:5000
```

---

# 🐳 Docker Implementation

The application is containerized using Docker.

## Dockerfile

Example:

```dockerfile
FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app .

CMD ["python","app.py"]
```




<img width="868" height="515" alt="Screenshot 2026-06-03 213416" src="https://github.com/user-attachments/assets/2e6bb983-64bd-4dad-be27-08768ace50ef" />
<img width="1200" height="1006" alt="Screenshot 2026-06-03 214537" src="https://github.com/user-attachments/assets/3364c3ce-3aa5-482e-9e3b-4ab3b7bf12ee" />

<img width="918" height="1004" alt="Screenshot 2026-06-03 214942" src="https://github.com/user-attachments/assets/515c018d-4ce4-47e9-ae48-34471c20eaea" />

<img width="1891" height="803" alt="image" src="https://github.com/user-attachments/assets/7515b6e9-3ee6-4c32-88b5-780a9985c4b3" />
