#/Development VPC
#module "vpc_test" {
#  source = "./vpc"
#  vpc_name   = "test-vpc"
#  cidr_block = "10.0.0.0/16"
#}

#Production VPC
#module "vpc_prod" {
#  source = "./vpc"
#  vpc_name   = "prod-vpc"
#  cidr_block = "10.2.0.0/16"
#}

module "vpc" {
  for_each = var.vpcs
  source   = "./vpc"
  vpc_name = each.key
  cidr_block = each.value
}