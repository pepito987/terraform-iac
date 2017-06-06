# override this on the command line to build more envs
# make sure, all your key variables have a "key"
# for the env you specify
db_envs = [
  "qa",
  "dev"
]

# VPC Information
region = "eu-west-2"

vpc_cidr_block = "10.0.0.0/16"

public_subnet_1_cidr = "10.0.0.0/24"

//# next two vars are shared by all environments
//route53_zone_name: "pdt.tax.service.gov.uk"
//route53_cname_ttl: 300
//
//# Subnets
//vpc_subnets:
//eu_west_2a:
//az: "eu-west-2a"
//subnet: "10.0.0.0/24"
//eu_west_2b:
//az: "eu-west-2b"
//subnet: "10.0.1.0/24"
//
//public_subnet_1_cidr: "10.0.0.0/24"