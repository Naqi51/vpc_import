
# 🌐 Terraform: Importing Existing AWS VPC Infrastructure

This project demonstrates how to import existing AWS VPC infrastructure into Terraform using the AWS CLI and Terraform CLI.

## 📦 Prerequisites

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) configured with profile access
- [Terraform](https://www.terraform.io/downloads)
- An AWS profile named `naqiaws1` (or replace it with your own)

## ⚙️ Environment Setup

```bash
# Set your AWS profile
set AWS_PROFILE=naqiaws1   # (on Windows)
# OR
export AWS_PROFILE=naqiaws1   # (on macOS/Linux)

# Verify identity
aws sts get-caller-identity

# Initialize Terraform project
terraform init



📥 Import Existing AWS Resources
VPC

terraform import aws_vpc.my_vpc vpc-019404d6f880dcc9c


