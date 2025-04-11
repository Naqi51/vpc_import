
# Importing the VPC
import {
 to = aws_vpc.my-vpc
 id = "vpc-019404d6f880dcc9c"
}

# Importing Subnets
import {
 to = aws_subnet.privatesb1
 id = "subnet-0c5892c45a4d995fb"
}

import {
 to = aws_subnet.publicsb2
 id = "subnet-03cdd6daabd284a94"
}

import {
 to = aws_subnet.publicsb1
 id = "subnet-0961dce02092769a3"
}

import {
 to = aws_subnet.private_sb_2
 id = "subnet-0fa5e685b4dd663d4"
}

# Importing Route Tables
import {
 to = aws_route_table.public-rt
 id = "rtb-027ff10e0c35996b3"
}

import {
 to = aws_route_table.private-rt
 id = "rtb-0132c7d534a73e366"
}

# Importing Internet Gateway
import {
 to = aws_internet_gateway.my-igw
 id = "igw-034796decd99b3bb8"
}

# Importing NAT Gateway
import {
 to = aws_nat_gateway.my-natgw
 id = "nat-0a78d83080671ec93"
}