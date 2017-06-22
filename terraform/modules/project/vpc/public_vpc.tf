# Public VPC attaced to a IGW and route table

resource "aws_vpc" "public_vpc" {
  cidr_block =  "${var.public_vpc_cidr}"

  tags {
    Name = "${var.public_vpc_name}-${var.env}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.public_vpc.id}"

  tags {
    Name = "${var.igw_name}-${var.env}"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = "${aws_vpc.public_vpc.id}"

  tags {
    Name = "${var.public_route_table_name}-${var.env}"
  }
}

resource "aws_route" "vpc_public_route" {
  route_table_id = "${aws_route_table.public_route_table.id}"
  destination_cidr_block = "${var.public_vpc_route}"
  gateway_id = "${aws_internet_gateway.igw.id}"
}