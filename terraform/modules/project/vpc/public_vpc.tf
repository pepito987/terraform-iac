# Public VPC attaced to a IGW and route table

module "public_vpc" {
  source = "../../aws/vpc"

  env = "${var.env}"
  vpc_cidr = "${var.public_vpc_cidr}"
  vpc_name = "${var.public_vpc_name}"
}

module "public_igw" {
  source = "../../aws/igw"
  env = "${var.env}"
  vpc_id = "${module.public_vpc.vpc_id}"
  igw_name = "${var.igw_name}"
}

module "public_route_table" {
  source = "../../aws/route_table"
  env = "${var.env}"
  vpc_id = "${module.public_vpc.vpc_id}"
  route_table_name = "${var.public_route_table_name}"
}

module "public_route" {
  source = "../../aws/route"
  igw_id = "${module.public_igw.igw_id}"
  route_table_id = "${module.public_route_table.route_table_id}"
  cidr_route = "${var.public_vpc_route}"
}