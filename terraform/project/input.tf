variable "env" {}
variable "igw_name" { default = "public-igw"}
variable "public_vpc_name" { default = "public-vpc"}
variable "public_route_table_name" { default = "public-route-table"}
variable "aws_region" {}
variable "public_vpc_cidr" {}

variable "public_subnet_name" { default = "public-subnet"}
variable "availability_zone_a" {}
variable "public_subnet_cidr" {}

variable "private_subnet_name" { default = "private-subnet"}
variable "private_route_table_name" { default = "private-route-table"}
variable "private_subnet_cidr" {}
