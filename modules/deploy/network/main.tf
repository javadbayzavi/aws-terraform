#Deploy VPCs 
module "vpc_module" {
  for_each   = var.vpcs
  source     = "./vpc"
  vpc_name   = each.key
  cidr_block = each.value
}

#This local put the subnet deploy logic inside of the network module. In order to make module more independet we can remove this local and inilise values in the root tfvar file.
locals {
  subnet_candidates = flatten([
    for vpc in var.vpc_types : [
      for az in var.AZs : [
        for subnet_type in var.subnet_types : {
          vpc_type          = vpc
          availability_zone = az
          subnet_type       = subnet_type
        }
      ]
    ]
  ])
}

#Deploy Subnets
module "subnets" {
  for_each = (length(var.subnet_candidates) > 0 ?
    { for idx, subnet in var.subnet_candidates : idx => subnet } :
  { for idx, subnet in local.subnet_candidates : idx => subnet })

  source            = "./subnets"
  environment       = each.value.vpc_type
  vpc_id            = module.vpc_module[each.value.vpc_type].vpc_id
  cidr_block        = cidrsubnet(module.vpc_module[each.value.vpc_type].vpc_cidr_block, 3, each.key)
  availability_zone = each.value.availability_zone
  subnet_type       = each.value.subnet_type
}

