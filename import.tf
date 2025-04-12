
# Importing the VPC
import {
 to = aws_vpc.my_vpc
 id = "vpc-0ac4d144b578d720e"
}

# Importing Subnets
import {
 to = aws_subnet.private_sb1
 id = "subnet-0e837a21012310b1c"
}

import {
 to = aws_subnet.public_sb1
 id = "subnet-06fb14c27e6996d2a"
}


# Importing Route Tables
import {
 to = aws_route_table.public_rt
 id = "rtb-01794a466cfce8d9c"
}

import {
 to = aws_route_table.private_rt
 id = "rtb-093c7cf4b3d419468"
}

# Public Subnet Association
import {
  to = aws_route_table_association.public_sb1
  id = "subnet-06fb14c27e6996d2a/rtb-01794a466cfce8d9c"
}

# Private Subnet Association
import {
  to = aws_route_table_association.private_sb1
  id = "subnet-0e837a21012310b1c/rtb-093c7cf4b3d419468"
}


# Importing Internet Gateway
import {
 to = aws_internet_gateway.my_igw
 id = "igw-087d6d013177be043"
}

# Importing NAT Gateway
import {
 to = aws_nat_gateway.my_nat
 id = "nat-04571001a907d3fb4"
}

# Importing Elastic IP
import {
  to = aws_eip.my_eip
  id = "eipalloc-0990091a6d81598df"
}
