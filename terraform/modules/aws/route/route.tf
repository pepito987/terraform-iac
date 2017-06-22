variable "route_table_id" {}
variable "cidr_route" {}
variable "igw_id" {}

resource "aws_route" "route" {
  route_table_id = "${var.route_table_id}"
  destination_cidr_block = "${var.cidr_route}"
  gateway_id = "${var.igw_id}"
}