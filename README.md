# 🚀 Project Bedrock — InnovateMart EKS Deployment

**Student:** Victor Oluwaseyi Akindiose
**Student ID:** ALT/SOE/025/0161
**Course:** Cloud Engineering — AltSchool Africa
**Exam:** Barakat Third Semester Exam

---

## 📋 Project Overview

Project Bedrock is a production-grade Kubernetes environment on AWS for InnovateMart Inc., a rapidly growing e-commerce startup. This project provisions an EKS cluster and deploys the AWS Retail Store Sample Application.

---

## 🏗️ Architecture
---

## ✅ Requirements Completed

| Requirement | Status |
|-------------|--------|
| VPC with public/private subnets | ✅ |
| EKS Cluster v1.34 | ✅ |
| Remote State (S3 + DynamoDB) | ✅ |
| Retail Store App deployed | ✅ |
| retail-app namespace | ✅ |
| IAM User bedrock-dev-view | ✅ |
| Kubernetes RBAC read-only | ✅ |
| CloudWatch Control Plane logs | ✅ |
| CloudWatch Container logs | ✅ |
| S3 assets bucket | ✅ |
| Lambda asset processor | ✅ |
| S3 triggers Lambda | ✅ |
| CI/CD Pipeline | ✅ |

---

## 📁 Project Structure
---

## 🔧 Technical Standards

| Resource | Value |
|----------|-------|
| AWS Region | us-east-1 |
| EKS Cluster | project-bedrock-cluster |
| VPC Name | project-bedrock-vpc |
| Namespace | retail-app |
| IAM User | bedrock-dev-view |
| S3 Bucket | bedrock-assets-alt-soe-025-0161 |
| Lambda | bedrock-asset-processor |
| Tag | Project: barakat-2025-capstone |

---

## 🚀 Deployment

**1. Clone the repository:**
```bash
git clone https://github.com/vames1/project-bedrock.git
cd project-bedrock/terraform
```

**2. Initialise Terraform:**
```bash
terraform init
```

**3. Deploy infrastructure:**
```bash
terraform apply -auto-approve
```

**4. Connect kubectl:**
```bash
aws eks update-kubeconfig --name project-bedrock-cluster --region us-east-1
```

**5. Deploy application:**
```bash
helm dependency build /path/to/retail-store-sample-app/src/app/chart/
helm install retail-store /path/to/retail-store-sample-app/src/app/chart/ --namespace retail-app
```

---

## 🌍 Application URL
---

## 👨‍💻 Author

**Victor Oluwaseyi Akindiose**
Cloud Engineer | Lagos, Nigeria
- 🌍 Portfolio: https://vames1.github.io
- 🐙 GitHub: https://github.com/vames1
- 📧 Email: victoroluwaseyi2018@gmail.com

