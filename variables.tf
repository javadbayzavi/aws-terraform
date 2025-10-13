variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources in."
  default     = "us-east-1" # Change this to your desired region
}


variable "subnet_name" {
  type = string
  description = "The name of the subnet."
  default = "my-subnet"
}

variable "vpc_ids" {
  type = list(string)
  description = "List of VPC IDs to associate with the security group."
  default = []
}

variable "subnet_ids" {
  type = list(string)
  description = "List of Subnet IDs to associate with the security group."
  default = []
}

variable "project_name" {
  type        = string
  description = "The name of the project."
  default     = "my-project"
}

variable "tags" {
  type = map(string)
  description = "A map of tags to assign to the resources."
  default = {
  }
}
variable "environemt" {
  type        = string
  description = "The environment for the resources (e.g., dev, staging, prod)."
  default     = "dev"
}

locals {
  merged_tags = merge(
    var.tags,
    {
      Project = var.project_name
      Environment     = var.environemt
    }
  )
}
