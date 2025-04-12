
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
```

## 📅 Import Existing AWS Resources

### VPC

```bash
terraform import aws_vpc.my_vpc vpc-019404d6f880dcc9c
```

## Subnets
```bash
terraform import aws_subnet.privatesb1 subnet-0c5892c45a4d995fb
terraform import aws_subnet.publicsb2  subnet-03cdd6daabd284a94
terraform import aws_subnet.publicsb1  subnet-0961dce02092769a3
terraform import aws_subnet.privatesb2 subnet-0fa5e685b4dd663d4
```

### Route Tables

```bash
terraform import aws_route_table.public_rt  rtb-027ff10e0c35996b3
terraform import aws_route_table.private_rt rtb-0132c7d534a73e366
```
### Association Route Tables

```bash
terraform import aws_route_table_association.public_sb1 subnet-06fb14c27e6996d2a/rtb-01794a466cfce8d9c
terraform import aws_route_table_association.private_sb1 subnet-0e837a21012310b1c/rtb-093c7cf4b3d419468
```

### Internet Gateway

```bash
terraform import aws_internet_gateway.my_igw igw-034796decd99b3bb8
```
### NAT Gateway

```bash
terraform import aws_nat_gateway.my_natgw nat-0a78d83080671ec93
```
### Elastic IP

```bash
terraform import aws_eip.my_eip eipalloc-0990091a6d81598df
```


