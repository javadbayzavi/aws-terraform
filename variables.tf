variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources in."
  default     = "us-east-1" # Change this to your desired region
}


variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
  default     = "my-subnet"
}

variable "environemt" {
  type        = string
  description = "The environment for the resources (e.g., dev, staging, prod)."
  default     = "dev"
}
