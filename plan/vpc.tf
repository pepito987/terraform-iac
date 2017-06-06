provider "aws" {
  region = "${vars.region}"
}

resource "aws_vpc" "default" {
  cidr_block = "${vars.vpc_cidr_block}"
  enable_dns_hostnames = true
  tags {
    Name = "${vars.db_envs[0]}-cf"
  }
}