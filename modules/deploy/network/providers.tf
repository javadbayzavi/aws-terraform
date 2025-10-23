#This file defines multiple AWS provider configurations with aliases for different layers.
# It allows modules to use specific provider instances based on their needs.
# So that different parts of the infrastructure can be managed in isolation.
# and still share the same base provider settings like region.
#For each alias in the configuration_aliases, there is a corresponding provider block defined in the base providers.tf file.

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws.network_layer
      ]
    }
  }
}