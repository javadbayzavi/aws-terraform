variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources in."
  default     = "us-east-1" # Change this to your desired region
}

variable "environemt" {
  type        = string
  description = "The environment for the resources (e.g., dev, staging, prod)."
  default     = "dev"
}
