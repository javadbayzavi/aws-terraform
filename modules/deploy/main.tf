
module "network" {
  source = "./network"
  providers = {
    aws.network_layer = aws.network_layer
  }
  vpc_types = var.vpc_types
  AZs       = var.AZs
  subnet_types = var.subnet_types
  app_environments = var.app_environments
  aws_region = var.aws_region
  vpcs_cidr = var.vpcs_cidr
}