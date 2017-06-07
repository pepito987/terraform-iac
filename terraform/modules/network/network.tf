variable "region" {}

variable "vpc_name" {}

variable "vpc_cidr" {}

module "vpc" {
  source = "./vpc"

  name = "${var.vpc_name}"
  cdir = "${var.vpc_cidr}"
}