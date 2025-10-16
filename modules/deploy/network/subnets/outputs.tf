output "subnet_id" {
  description = "The ID of the Subnet"
  value       = aws_subnet.project_subnet.id
}

output "subnet_arn" {
  description = "The ARN of the Subnet"
  value       = aws_subnet.project_subnet.arn
}

output "environment" {
  description = "The environment tag of the VPC"
  value       = var.environment
}

output "availability_zone" {
  description = "The availability zones in the VPC's region"
  value       = var.availability_zone
}

output "subnet_type" {
  description = "The type of subnet (public or private)"
  value       = var.subnet_type
}