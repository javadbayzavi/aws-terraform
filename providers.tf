terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or a more recent version you prefer
      configuration_aliases = [
        aws.network_layer,
        aws.compute_layer,
        aws.elb_layer
      ]
    }
  }
}

provider "aws" {
  alias  = "network_layer"
  region = var.aws_region
}

provider "aws" {
  alias  = "compute_layer"
  region = var.aws_region
}

provider "aws" {
  alias  = "elb_layer"
  region = var.aws_region
}
