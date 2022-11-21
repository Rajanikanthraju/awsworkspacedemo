resource "aws_vpc" "ntier" {
 cidr_block = var.vpc_cidr_range
 tags = {
   "Name" = "vpcfromtf"
    Environment= terraform.workspace
 }
  
}
resource "aws_internet_gateway" "igw" {
vpc_id = aws_vpc.ntier.id
tags = {
  
  "Name" = "igwfromtf"
  Environment= terraform.workspace
}
  
}
resource "aws_subnet" "subnets" {
    count=6
    vpc_id = aws_vpc.ntier.id
    cidr_block = var.subnet_cidr[count.index]
    availability_zone = var.subnet_az[count.index]
    tags = {
      "Name" = var.subnet_tags[count.index]
       Environment = terraform.workspace
    }
  
}
