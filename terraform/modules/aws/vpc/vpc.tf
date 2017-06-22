variable "vpc_cidr" {}
variable "vpc_name" {}
variable "env" {}

resource "aws_vpc" "vpc" {
  cidr_block =  "${var.vpc_cidr}"

  tags {
    Name = "${var.vpc_name}-${var.env}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}