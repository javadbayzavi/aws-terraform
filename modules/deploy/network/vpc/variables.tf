variable "vpc_name" {
  type = string
  description = "The name of the VPC."
  default = "my-vpc"
}

variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

