variable "vpcs" {
  default = {
    test = "10.0.0.0/16",
    prod = "10.1.0.0/16",
  }
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

variable "subnet_candidates" {
  description = "Flatten list of maps defining candidate subnets to create"
  type = list(object({
    vpc_type          = string
    availability_zone = string
    subnet_type       = string
  }))
  default = []
}

