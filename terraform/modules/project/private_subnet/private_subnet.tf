# Create private subnet:
#  - attacced to a vpc
#  - associated to a private route table

module "private_route_table" {
  source = "../../aws/route_table"
  env = "${var.env}"
  vpc_id = "${var.public_vpc_id}"
  route_table_name = "${var.private_route_table_name}"
}

module "private_subnet" {
  source = "../../aws/subnet"
  env = "${var.env}"
  availability_zone = "${var.availability_zone_a}"
  route_table_id = "${module.private_route_table.route_table_id}"
  subnet_name = "${var.private_subnet_name}"
  vpc_id = "${var.public_vpc_id}"
  subnet_cidr = "${var.private_subnet_cidr}"
}