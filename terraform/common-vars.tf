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

variable "subnets-cidr" {
  type = "map"
  default = {
    "zone0" = "10.0.0.0/24"
    "zone1" = "10.0.0.0/24"
  }
}

variable "subnets-az" {
  type = "map"
  default = {
    "zone0" = "eu-west-2a"
    "zone1" = "eu-west-2b"
  }
}

variable "subnets-name" {
  type = "map"
  default = {}
}