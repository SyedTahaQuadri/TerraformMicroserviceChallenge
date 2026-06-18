# Cloud Compute Deployment with Terraform

## Project Overview

This project demonstrates the deployment of a containerized microservice on AWS using Terraform. A static web application is containerized using Docker, stored in Amazon Elastic Container Registry (ECR), and deployed on a private EC2 instance. The application is exposed to users through an Application Load Balancer (ALB), while direct access to the EC2 instance is restricted.

---

## Architecture

```text
Internet
    │
    ▼
Application Load Balancer
    │
    ▼
Private EC2 Instance
    │
    ▼
Docker Container (Nginx Static Website)
    │
    ▼
Amazon ECR

Supporting Components:
- VPC
- Public Subnets
- Private Subnet
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- IAM Role & Instance Profile
- SSH Key Pair
```

---

## Features

- Infrastructure as Code (IaC) using Terraform
- Dockerized static web application
- Amazon ECR for container image storage
- Private EC2 deployment
- Application Load Balancer for public access
- Secure networking with public and private subnets
- IAM role-based access to ECR
- Automated application deployment using EC2 User Data
- Restricted SSH access from a specific IP address

---

## Technologies Used

- AWS
- Terraform
- Docker
- Amazon ECR
- EC2
- Application Load Balancer (ALB)
- IAM
- VPC Networking
- Ubuntu Linux
- Nginx

---

## Deployment Workflow

1. Build the Docker image locally.
2. Create an Amazon ECR repository using Terraform.
3. Push the Docker image to ECR using Terraform.
4. Provision networking resources (VPC, Subnets, Route Tables, NAT Gateway).
5. Create IAM Role and Instance Profile.
6. Launch a private EC2 instance.
7. Pull the Docker image from ECR during instance startup.
8. Run the container automatically using User Data.
9. Create an Application Load Balancer.
10. Route traffic from ALB to the EC2 instance.

---

## Security Implementation

- EC2 instance deployed in a private subnet.
- No public IP assigned to the EC2 instance.
- Application accessible only through the ALB.
- SSH access restricted to a specific public IP.
- IAM role used instead of access keys.
- Security groups configured with least-privilege access.

---

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Review execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

---

## Project Structure

```text
cloud-compute-terraform/
│
├── app/
│   ├── Dockerfile
│   └── index.html
│
├── scripts/
│   └── user_data.sh
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md
```

---

## Outcome

The project successfully deploys a containerized web application on AWS using Terraform. The application runs on a private EC2 instance and is securely exposed through an Application Load Balancer, fulfilling all challenge requirements while following cloud and infrastructure best practices.
