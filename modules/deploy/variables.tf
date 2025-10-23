variable "aws_region" {
  type        = string
}

variable "vpcs_cidr" {
  description = "Map of VPC names to CIDR blocks"
  type = map(string)
}


variable "app_environments" {
  type        = list(string)
}


variable "vpc_types" {
  type = list(string)
}

variable "AZs" {
  type = list(string)  
}

variable "subnet_types" {
  type = list(string)
}
