variable "vpcs_cidr" {
  description = "Map of VPC names to CIDR blocks"
  type = map(string)
}


variable "subnet_candidates" {
  description = "Flatten list of maps defining candidate subnets to create"
  type = list(object({
    vpc_type          = string
    availability_zone = string
    subnet_type       = string
  }))
  default = []
}


variable "aws_region" {
  type        = string
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

variable "nat-ig-subnet-type" {
  type = list(string)
}