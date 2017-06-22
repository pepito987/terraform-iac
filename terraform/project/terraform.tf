
module "public_vpc" {
  source = "../modules/project/vpc"
  env = "${var.env}"
  igw_name = "${var.igw_name}"
  public_vpc_name = "${var.public_vpc_name}"
  aws_region = "${var.aws_region}"
  public_vpc_cidr = "${var.public_vpc_cidr}"
  public_route_table_name = "${var.public_route_table_name}"
}

module "public_subnet" {
  source = "../modules/project/public_subnet"
  env = "${var.env}"
  public_subnet_name = "${var.public_subnet_name}"
  public_route_table_id = "${module.public_vpc.public_route_table_id}"
  availability_zone_a = "${var.availability_zone_a}"
  public_vpc_id = "${module.public_vpc.public_vpc_id}"
  public_subnet_cidr = "${var.public_subnet_cidr}"
}


module "private_subnet" {
  source = "../modules/project/private_subnet"
  env = "${var.env}"
  availability_zone_a = "${var.availability_zone_a}"
  public_vpc_id = "${module.public_vpc.public_vpc_id}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
  private_subnet_name = "${var.private_subnet_name}"
  private_route_table_name = "${var.private_route_table_name}"
}