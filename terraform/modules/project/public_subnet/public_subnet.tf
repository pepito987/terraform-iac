# Public subent attacced to a public route table

module "public_subnet" {
  source = "../../aws/subnet"
  env = "${var.env}"
  vpc_id = "${var.public_vpc_id}"
  route_table_id = "${var.public_route_table_id}"
  availability_zone = "${var.availability_zone_a}"
  subnet_cidr = "${var.public_subnet_cidr}"
  subnet_name = "${var.public_subnet_name}"
}