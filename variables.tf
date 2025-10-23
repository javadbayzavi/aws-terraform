variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources in."
  default     = "us-east-1" # Change this to your desired region
}

variable "vpcs_cidr" {
  description = "Map of VPC names to CIDR blocks"
  type = map(string)
  default = {
    test = "10.0.0.0/16",
    prod = "10.1.0.0/16",
  }
}


variable "app_environments" {
  type        = list(string)
  description = "The application environment (e.g., web, api, worker)."
  default     = ["prod", "test", "staging", "sandbox"]
}


variable "vpc_types" {
  default = ["prod", "test"]
}

variable "AZs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "subnet_types" {
  default = ["public", "private"]
}
