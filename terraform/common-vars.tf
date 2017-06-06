variable "region" {
  default = "eu-west-2"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "db_envs" {
  type = "list"
  default = ["qa","dev"]
}
