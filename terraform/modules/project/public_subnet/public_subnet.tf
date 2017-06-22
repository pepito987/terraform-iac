# Public subent attacced to a public route table

resource "aws_subnet" "public_subnet" {
  availability_zone = "${var.availability_zone_a}"

  cidr_block = "${var.public_subnet_cidr}"
  vpc_id = "${var.public_vpc_id}"

  lifecycle { create_before_destroy = true }

  tags {
    Name = "${var.public_subnet_name}-${var.env}"
  }
}

resource "aws_route_table_association" "public_subnet_to_public_route_table" {
  route_table_id = "${var.public_route_table_id}"
  subnet_id = "${aws_subnet.public_subnet.id}"
}