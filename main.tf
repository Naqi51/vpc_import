# VPC
resource "aws_vpc" "my_vpc" {
 cidr_block = "10.0.0.0/26"
 tags = {
  Name = "my_vpc"
 }
}

# Subnets
resource "aws_subnet" "private_sb1" {
 vpc_id   = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.32/28"
 tags = {
  Name = "private_sb1"
 }
}

resource "aws_subnet" "public_sb1" {
 vpc_id   = aws_vpc.my_vpc.id
 cidr_block = "10.0.0.0/28"
 tags = {
 Name = "public_sb1"
 }
}


# Main Route Table
resource "aws_route_table" "public_rt" {
 vpc_id = aws_vpc.my_vpc.id
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.my_igw.id
 }
 tags = {
 Name = "public_rt"
 }
}

# Private Route Table
resource "aws_route_table" "private_rt" {
 vpc_id = aws_vpc.my_vpc.id
 route {
 cidr_block = "0.0.0.0/0"
 nat_gateway_id = aws_nat_gateway.my_nat.id
 }
 tags = {
 Name = "private_rt"
 }
}


# Public Route Table Association with Public Subnet
resource "aws_route_table_association" "public_sb1" {
  subnet_id      = aws_subnet.public_sb1.id
  route_table_id = aws_route_table.public_rt.id
}

# Private Route Table Association with Private Subnet
resource "aws_route_table_association" "private_sb1" {
  subnet_id      = aws_subnet.private_sb1.id
  route_table_id = aws_route_table.private_rt.id
}


# Internet Gateway
resource "aws_internet_gateway" "my_igw" {
 vpc_id = aws_vpc.my_vpc.id
 tags = {
 Name = "my_igw"
 }
}

# NAT Gateway
resource "aws_nat_gateway" "my_nat" {
 subnet_id = aws_subnet.public_sb1.id
 allocation_id = aws_eip.my_eip.id
 depends_on = [ aws_internet_gateway.my_igw]
 tags = {
 Name = "my_nat"
 }
}

# Elastic IP
resource "aws_eip" "my_eip" {
  domain = "vpc"

  tags = {
    Name = "my_eip"
  }
}
