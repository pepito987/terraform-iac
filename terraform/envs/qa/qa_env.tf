variable "region" {}
variable "vpc_cidr" {}
variable "vpc_name" {}


provider "aws" {
  region = "${var.region}"
}

module "network" {
  source = "../../modules/network"

  region = "${var.region}"
  vpc_cidr = "${var.vpc_cidr}"
  vpc_name = "${var.vpc_name}"
}