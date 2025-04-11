# VPC
resource "aws_vpc" "my-vpc" {
 cidr_block = "10.0.0.0/26"
 tags = {
  Name = "my-vpc"
 }
}

# Subnets
resource "aws_subnet" "privatesb1" {
 vpc_id   = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.32/28"
 tags = {
  Name = "privatesb1"
 }
}

resource "aws_subnet" "publicsb2" {
 vpc_id   = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.16/28"
 tags = {
 Name = "publicsb2"
 }
}

resource "aws_subnet" "publicsb1" {
 vpc_id   = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.0/28"
 tags = {
 Name = "publicsb1"
 }
}

resource "aws_subnet" "privatesb2" {
 vpc_id  = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.48/28"
 tags = {
 Name = "privatesb2"
 }
}

# Main Route Table
resource "aws_route_table" "public-rt" {
 vpc_id = aws_vpc.my_vpc.id
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.my_igw.id
 }
 tags = {
 Name = "public-rt"
 }
}

# Private Route Table
resource "aws_route_table" "private-rt" {
 vpc_id = aws_vpc.my_vpc.id
 route {
 cidr_block = "0.0.0.0/0"
 nat_gateway_id = aws_nat_gateway.my_nat_gw.id
 }
 tags = {
 Name = "private-rt"
 }
}

# Internet Gateway
resource "aws_internet_gateway" "my-igw" {
 vpc_id = aws_vpc.my_vpc.id
 tags = {
 Name = "my-igw"
 }
}

# NAT Gateway
resource "aws_nat_gateway" "my-natgw" {
 subnet_id = aws_subnet.public_sb_1.id
 tags = {
 Name = "my-natgw"
 }
}