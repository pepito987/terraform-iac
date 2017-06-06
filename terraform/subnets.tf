
resource "aws_subnet" "vpc_subnets" {
  count = 2
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${lookup(var.subnets-cidr, format("zone%d",count.index))}"
  availability_zone = "${lookup(var.subnets-az, format("zone%d",count.index))}"

  tags {
    Name            = "${lookup(var.subnets-name, format("zone%d",count.index))}"
  }
}