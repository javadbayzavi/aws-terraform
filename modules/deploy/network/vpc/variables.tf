variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "This name is included in VPC tags"
  default     = "project-vpc"
}
