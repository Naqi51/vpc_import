
commands to import and then destroy

aws sts get-caller-identity
terraform init
terraform import aws_vpc.my-vpc vpc-019404d6f880dcc9c

terraform import aws_subnet.privatesb1 subnet-0c5892c45a4d995fb
terraform import aws_subnet.publicsb2 subnet-03cdd6daabd284a94
terraform import aws_subnet.publicsb1 subnet-0961dce02092769a3
terraform import aws_subnet.privatesb2 subnet-0fa5e685b4dd663d4

terraform import aws_route_table.public-rt rtb-027ff10e0c35996b3
terraform import aws_route_table.private-rt rtb-0132c7d534a73e366

terraform import aws_internet_gateway.my-igw igw-034796decd99b3bb8

terraform import aws_nat_gateway.my-natgw nat-0a78d83080671ec93
