
variable "env" {}

variable "public_vpc_route" { default = "0.0.0.0/0" }
variable "public_vpc_cidr" {}
variable "public_vpc_name" {}
variable "aws_region" {}

variable "igw_name" {}
variable "public_route_table_name" {}