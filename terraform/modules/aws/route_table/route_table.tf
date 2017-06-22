variable "vpc_id" {}
variable "route_table_name" {}
variable "env" {}

resource "aws_route_table" "route_table" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "${var.route_table_name}-${var.env}"
  }
}

output "route_table_id" {
  value = "${aws_route_table.route_table.id}"
}