\# AWS DevOps Practical Assignment

 

\## Project Overview

 

This project demonstrates the implementation of a complete AWS infrastructure using Terraform (Infrastructure as Code).

 

The solution includes:

 

\- VPC

\- Public and Private Subnets

\- Internet Gateway

\- NAT Gateway

\- Route Tables

\- Security Groups

\- Launch Template

\- Auto Scaling Group

\- Application Load Balancer

\- Target Group

\- RDS MySQL

\- AWS Secrets Manager

\- S3 Buckets

\- GitHub Actions CI/CD

 

\---

 

\# Architecture

 

```text

Internet

|

v

Application Load Balancer

|

v

Auto Scaling Group

|

v

EC2 Instances

|

v

RDS MySQL

 

Secrets Manager

|

v

Database Credentials

 

ALB Access Logs

|

v

S3 Bucket

```

 

\---

 

\# Infrastructure Components

 

\## Networking

 

\### VPC

 

```text

10.0.0.0/16

```

 

\### Public Subnets

 

```text

10.0.1.0/24

10.0.2.0/24

```

 

\### Private Subnets

 

```text

10.0.3.0/24

10.0.4.0/24

```

 

\### Resources Created

 

\- Internet Gateway

\- NAT Gateway

\- Public Route Table

\- Private Route Table

 

\---

 

\# Security

 

\## Security Groups

 

\### ALB Security Group

 

Allowed Ports:

 

```text

80

443

```

 

\### EC2 Security Group

 

Allowed Ports:

 

```text

22

80

```

 

\---

 

\# Compute Layer

 

\## Launch Template

 

```text

Instance Type: t3.micro

```

 

\## Auto Scaling Group

 

```text

Minimum Capacity : 2

Desired Capacity : 2

Maximum Capacity : 4

```

 

\---

 

\# Load Balancer

 

\## Application Load Balancer

 

Features:

 

\- Public Facing

\- HTTP Listener

\- Target Group Integration

\- Multi Availability Zone Deployment

 

\---

 

\# Database

 

\## Amazon RDS MySQL

 

Configuration:

 

```text

Engine: MySQL 8.0

Deployment: Private Subnets

Instance Class: db.t3.micro

Storage: 20 GB

```

 

\---

 

\# Secrets Manager

 

Database credentials are securely stored using:

 

```text

AWS Secrets Manager

```

 

\---

 

\# Storage

 

\## Amazon S3

 

Buckets Created:

 

```text

saikrishna-devops-app-bucket

saikrishna-alb-logs-bucket

```

 

Purpose:

 

\- Application Storage

\- Load Balancer Access Logs

 

\---

 

\# Terraform Files

 

```text

provider.tf

vpc.tf

route.tf

nat.tf

security-group.tf

launch-template.tf

asg.tf

target-group.tf

alb.tf

rds.tf

secrets.tf

s3.tf

```

 

\---

 

\# Deployment Steps

 

Initialize Terraform:

 

```bash

terraform init

```

 

Validate:

 

```bash

terraform validate

```

 

Plan:

 

```bash

terraform plan

```

 

Apply:

 

```bash

terraform apply

```

 

Destroy Resources:

 

```bash

terraform destroy

```

 

\---

 

\# High Availability Features

 

\- Multi-AZ Subnet Design

\- Auto Scaling Group

\- Application Load Balancer

\- Private Database Layer

\- Separate Public and Private Networks

 

\---

 

\# Security Best Practices

 

\- Infrastructure as Code

\- Public and Private Network Segmentation

\- Least Privilege Security Groups

\- Secrets Manager Integration

\- Database in Private Subnets

\- Controlled Access to Resources

 

\---

 

\# Project Deliverables

 

Completed:

 

\- Terraform Infrastructure Code

\- AWS Networking

\- Auto Scaling Group

\- Application Load Balancer

\- RDS MySQL

\- AWS Secrets Manager

\- S3 Buckets

\- GitHub Repository

 

\---

 

\# Author

 

Daravastuwar Sai Krishna

 

DevOps Engineer

