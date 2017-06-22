output "public_vpc_id" {
  value = "${module.public_vpc.vpc_id}"
}

output "public_route_table_id" {
  value = "${module.public_route_table.route_table_id}"
}