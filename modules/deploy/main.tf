
module "network" {
  source = "./network"
  providers = {
    aws = aws.network_layer
  }
}