terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or a more recent version you prefer
    }
  }
}

provider "aws" {
  region = var.aws_region # Use a variable for region (defined in variables.tf)
  assume_role {
    #role_arn = "path to user arn"
  }
}
