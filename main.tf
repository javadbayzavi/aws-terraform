module "deploy" {
  source = "./modules/deploy"
  providers = {
    aws.network_layer = aws.network_layer
    aws.compute_layer = aws.compute_layer
  }
  AZs             = var.AZs
  vpc_types       = var.vpc_types
  subnet_types    = var.subnet_types
  app_environments = var.app_environments
  aws_region      = var.aws_region
  vpcs_cidr      = var.vpcs_cidr
}
