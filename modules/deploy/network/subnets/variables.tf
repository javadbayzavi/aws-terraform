variable "availability_zone" {
  type        = string
  description = "This name is included in VPC tags"
  default     = "us-east-1a"
}

variable "cidr_block" {
  type        = string
  description = ""
  default     = "10.0.0.0/16"
}

variable "environment" {
  type        = string
  description = "Define environment for network deployment"
  default     = "dev"
}

variable "vpc_id" {
  type        = string
  description = "This id is uinque per VPC"
  default     = "main"
}

variable "subnet_type" {
  type        = string
  description = "This defines if the subnet is public or private"
  default     = "public"
}