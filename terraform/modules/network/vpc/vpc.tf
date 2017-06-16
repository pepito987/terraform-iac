
variable "name" { default = "vpc"}
variable "cdir" {}

resource "aws_vpc" "vpc" {
  enable_dns_hostnames  = true
  enable_dns_support    = true
  cidr_block            = "${var.cdir}"
  tags      { Name = "${var.name}" }
  lifecycle { create_before_destroy = true}
}

output "vpc_id"   { value = "${aws_vpc.vpc.id}" }
output "vpc_cidr" { value = "${aws_vpc.vpc.cidr_block}" }