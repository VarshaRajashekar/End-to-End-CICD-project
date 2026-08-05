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

### What I Built

- Provisioned AWS infrastructure using Terraform
- Launched and configured an EC2 instance
- Installed and configured Jenkins for automation
- Containerized the application using Docker
- Connected GitHub with Jenkins using webhooks
- Automated the build and deployment process
- Tested the complete CI/CD workflow from code commit to deployment




<img width="868" height="515" alt="Screenshot 2026-06-03 213416" src="https://github.com/user-attachments/assets/2e6bb983-64bd-4dad-be27-08768ace50ef" />
<img width="1200" height="1006" alt="Screenshot 2026-06-03 214537" src="https://github.com/user-attachments/assets/3364c3ce-3aa5-482e-9e3b-4ab3b7bf12ee" />

<img width="918" height="1004" alt="Screenshot 2026-06-03 214942" src="https://github.com/user-attachments/assets/515c018d-4ce4-47e9-ae48-34471c20eaea" />

<img width="1891" height="803" alt="image" src="https://github.com/user-attachments/assets/7515b6e9-3ee6-4c32-88b5-780a9985c4b3" />
