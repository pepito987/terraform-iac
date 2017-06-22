variable "availability_zone" {}
variable "subnet_cidr" {}
variable "vpc_id" {}
variable "subnet_name" {}
variable "env" {}
variable "route_table_id" {}

resource "aws_subnet" "subnet" {
  availability_zone = "${var.availability_zone}"

  cidr_block = "${var.subnet_cidr}"
  vpc_id = "${var.vpc_id}"

  lifecycle { create_before_destroy = true }

  tags {
    Name = "${var.subnet_name}-${var.env}"
  }
}

resource "aws_route_table_association" "public_subnet_to_public_route_table" {
  route_table_id = "${var.route_table_id}"
  subnet_id = "${aws_subnet.subnet.id}"
}

output "id" {
  value = "${aws_subnet.subnet.id}"
}