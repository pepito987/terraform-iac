
provider "aws" {
  region = "${var.region}"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name = "${var.vpc_name}"
  }
}

resource "aws_vpc" "vpc" {
  enable_dns_hostnames  = true
  cidr_block            = "${var.vpc_cidr_block}"
  tags {
    Name = "${var.vpc_name}"
  }
}

resource "aws_default_route_table" "vpc_rote_table" {
  default_route_table_id = "${aws_vpc.vpc.default_route_table_id}"

    route {
      cidr_block         = "0.0.0.0/0"
      gateway_id         = "${aws_internet_gateway.igw.id}"
    }

  tags {
    Name = "${var.vpc_name}"
  }
}