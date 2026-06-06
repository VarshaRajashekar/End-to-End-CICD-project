## Project Overview

In this project, I built an end-to-end CI/CD pipeline on AWS to automate the process of building and deploying a web application. The goal was to gain hands-on experience with DevOps tools and understand how modern deployment workflows are implemented in real-world environments.

Through this project, I learned how different DevOps tools work together to automate software delivery, reduce manual effort, and improve deployment reliability. It also helped me strengthen my understanding of Infrastructure as Code (IaC), CI/CD pipelines, containerization, and AWS cloud services.

### What I Built

- Provisioned AWS infrastructure using Terraform
- Launched and configured an EC2 instance
- Installed and configured Jenkins for automation
- Containerized the application using Docker
- Connected GitHub with Jenkins using webhooks
- Automated the build and deployment process
- Tested the complete CI/CD workflow from code commit to deployment

### Tools & Technologies

- AWS EC2
- Terraform
- Jenkins
- Docker
- Git & GitHub
- Linux
- Shell Scripting

### Workflow

Developer → GitHub → Jenkins → Docker Build → Deployment on AWS EC2

Whenever code is pushed to GitHub, Jenkins automatically detects the change, builds the application, creates a Docker image, and deploys the latest version to the EC2 instance.

<img width="868" height="515" alt="Screenshot 2026-06-03 213416" src="https://github.com/user-attachments/assets/2e6bb983-64bd-4dad-be27-08768ace50ef" />
<img width="1200" height="1006" alt="Screenshot 2026-06-03 214537" src="https://github.com/user-attachments/assets/3364c3ce-3aa5-482e-9e3b-4ab3b7bf12ee" />

<img width="918" height="1004" alt="Screenshot 2026-06-03 214942" src="https://github.com/user-attachments/assets/515c018d-4ce4-47e9-ae48-34471c20eaea" />

