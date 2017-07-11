variable "region" {}
variable "vpc_cidr" {}
variable "vpc_name" {}

provider "aws" {
  region = "${var.region}"
//  assume_role {
//    role_arn = "arn:aws:iam::256981470617:role/RolePortalRehomingEngineer"
//  }
}

module "network" {
  source = "../modules/network"

  region = "${var.region}"
  vpc_cidr = "${var.vpc_cidr}"
  vpc_name = "${var.vpc_name}"
}