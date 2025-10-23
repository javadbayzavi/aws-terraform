module "deploy" {
  source = "./modules/deploy"
  providers = {
    aws.network_layer = aws.network_layer
    aws.compute_layer = aws.compute_layer
  }
}
