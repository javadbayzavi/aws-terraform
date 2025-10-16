#Deploy VPCs 
module "vpc_module" {
  for_each = var.vpcs
  source   = "./vpc"
  vpc_name = each.key
  cidr_block = each.value
}

#Deploy Subnets
module "subnets" {
  source = "./subnets"
  environment = module.vpc_module["test"].vpc_name
  vpc_id = module.vpc_module["test"].vpc_id
  cidr_block = cidrsubnet(module.vpc_module["test"].vpc_cidr_block, 2, 0)
}