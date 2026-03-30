
# 🚀 Terraform AWS EC2 with Modular Architecture & Remote State (S3)

## 📌 Overview

This project demonstrates a **production-grade Terraform setup** for provisioning an AWS EC2 instance using:

- ✅ Modular architecture
- ✅ Remote backend (S3) for state locking
- ✅ Security Groups with ingress & egress rules
- ✅ Reusable Terraform modules
- ✅ Clean and scalable structure

This setup follows **DevOps best practices** used in real-world environments.

---

## 🏗️ Architecture

- AWS EC2 Instance (Amazon Linux)
- Security Group (SSH + HTTP access)
- S3 Backend for Terraform State Management
- Modular Terraform Code

---

## 📂 Project Structure
├── main.tf # Root module calling child module
├── variables.tf # Input variables
├── outputs.tf # Output values
├── provider.tf # AWS provider config
├── backend.tf # Remote backend (S3)
├── modules/
│ └── ec2/ # Reusable EC2 module
├── terraform.tfvars # Variable values
└── README.md


---

## 🔐 Remote State Configuration (S3)

Terraform state is stored securely in S3:

```hcl
terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

👉 Benefits:
State locking using DynamoDB
Team collaboration
Secure and centralized state management


⚙️ Usage
1️⃣ Initialize Terraform
terraform init
2️⃣ Preview Changes
terraform plan
3️⃣ Apply Configuration
terraform apply

🔒 Security Best Practices
Restrict SSH access (22) to your IP only
Avoid using 0.0.0.0/0 in production
Enable S3 encryption for state file
Use IAM roles instead of hardcoded credentials

🔁 Module Usage Example
module "ec2" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  security_group = var.security_group
}

📤 Outputs
EC2 Public IP
Instance ID

👨‍💻 Author

Amruth Swamy C P
DevOps Engineer | AWS | Terraform | Kubernetes

⭐ If you like this project

Give it a ⭐ on GitHub and share with your network!