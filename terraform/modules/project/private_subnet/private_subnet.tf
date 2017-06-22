# Create private subnet:
#  - attacced to a vpc
#  - associated to a private route table

resource "aws_subnet" "private_subnet" {
  availability_zone = "${var.availability_zone_a}"

  vpc_id = "${var.public_vpc_id}"
  cidr_block = "${var.private_subnet_cidr}"

  lifecycle { create_before_destroy = true}

  tags {
    Name = "${var.private_subnet_name}-${var.env}"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = "${var.public_vpc_id}"

  tags {
    Name = "${var.private_route_table_name}-${var.env}"
  }
}

resource "aws_route_table_association" "private_subnet_to_private_route_table" {
  route_table_id = "${aws_route_table.private_route_table.id}"
  subnet_id = "${aws_subnet.private_subnet.id}"
}