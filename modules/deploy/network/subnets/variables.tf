variable "availability_zone" {
  type        = string
  description = "This name is included in VPC tags"
  default     = "use1-az1"
}

variable "cidr_block" {
  type        = string
  description = ""
  default     = "10.0.0.0/16"
}

variable "environment": {
  type        = string
  description = "Define environment for network deployment"
  default     = "dev"
}

variable "vpc_id" {
  type        = string
  description = "This id is uinque per VPC"
  default     = "main"
}